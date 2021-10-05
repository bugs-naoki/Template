module ApplicationHelper
  def product_image(product, id)
    tag.img src: product_product_picture_path(product, id)
  end
end
