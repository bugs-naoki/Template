class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  def index
    @products = Product.all
    @categorys = ProductCategory.all
  end

  # GET /products/1
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    @category = ProductCategory.all
  end

  # GET /products/1/edit
  def edit
    @category = ProductCategory.all
  end

  # POST /products
  def create
    @product = Product.new(product_params)
    @product.product_category = ProductCategory.find(product_params[:product_category_id])
    @category = ProductCategory.all

    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
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
end
