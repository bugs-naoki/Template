class HoldingMethodsController < ApplicationController
  before_action :set_holding_method, only: [:show, :edit, :update, :destroy]

  # GET /holding_methods
  def index
    @holding_methods = HoldingMethod.all
  end

  # GET /holding_methods/1
  def show; end

  # GET /holding_methods/new
  def new
    @holding_method = HoldingMethod.new
  end

  # GET /holding_methods/1/edit
  def edit; end

  # POST /holding_methods
  def create
    @holding_method = HoldingMethod.new(holding_method_params)

    if @holding_method.save
      redirect_to @holding_method, notice: "Holding method was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /holding_methods/1
  def update
    if @holding_method.update(holding_method_params)
      redirect_to @holding_method, notice: "Holding method was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /holding_methods/1
  def destroy
    @holding_method.destroy
    redirect_to holding_methods_url, notice: "Holding method was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_holding_method
    @holding_method = HoldingMethod.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def holding_method_params
    params.require(:holding_method).permit(:name)
  end
end
