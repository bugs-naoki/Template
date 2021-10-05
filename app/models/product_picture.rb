class ProductPicture < ApplicationRecord
  belongs_to :product
  validates :picture, presence: true
end
