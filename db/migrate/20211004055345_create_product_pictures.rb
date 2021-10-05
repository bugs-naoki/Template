class CreateProductPictures < ActiveRecord::Migration[6.1]
  def change
    create_table :product_pictures do |t|
      t.binary :picture, null: false, default: ""
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
