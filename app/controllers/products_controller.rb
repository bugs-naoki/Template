class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  def index
    @products = Product.all
  end

  # GET /products/1
  def show
    @product_pictures = ProductPicture.where(product_id: params[:id])
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
    @product = Product.new(product_params)
    ActiveRecord::Base.transaction do
      @product.product_category = ProductCategory.find(product_params[:product_category_id])
      @product.save!
      targets = [:picture1, :picture2, :picture3]
      targets.each do |key|
        if binary_params[key].present?
          product_picture = ProductPicture.new
          product_picture.picture = binary_params[key].read
          product_picture.product = @product
          product_picture.save!
        end
      end

    end
    redirect_to @product, notice: 'Product was successfully created.'
  rescue => e
    logger.error e
    logger.error e.backtrace.join("\n")

  # binding.pry

      render :new
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
    redirect_to products_url, notice: 'Product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :catchphrase, :detail, :classification, :target_animal, :raw_materials, :principal_component, :nutritional_information, :amount, :daily_dosage, :precautions_for_use, :precautions_for_storage_and_handling, :country_of_origin, :expiration_date_information, :price, :jan_code, :product_category_id)
    end

    def binary_params
      params.require(:product).permit(:picture1, :picture2, :picture3)
    end
end
