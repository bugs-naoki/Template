class ProductPicturesController < ApplicationController
  def show
    @product_picture = ProductPicture.find(params[:id])
    send_data @product_picture.picture, type: "image/png", disposition: :inline
  end
end
