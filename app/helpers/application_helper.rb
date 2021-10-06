module ApplicationHelper
  def product_image(product, id)
    if product.id.blank? || id.id.blank?
      return
    end

    tag.img src: product_product_picture_path(product, id)
  end
end
