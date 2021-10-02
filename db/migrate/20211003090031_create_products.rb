class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string     :name                                 , null: false, comment: "商品名"
      t.text       :catchphrase                          , null: false, comment: "キャッチフレーズ"
      t.text       :detail                               , null: false, comment: "製品情報詳細"
      t.string     :classification                       , null: false, comment: "栄養補助食品などの種別情報"
      t.string     :target_animal                        , null: false, comment: "対象動物"
      t.text       :raw_materials                        , null: false, comment: "原材料"
      t.text       :principal_component                  , null: false, comment: "主成分"
      t.text       :nutritional_information              , null: false, comment: "栄養成分表示"
      t.string     :amount                               , null: false, comment: "内容量"
      t.text       :daily_dosage                         , null: false, comment: "1日の給与量"
      t.text       :precautions_for_use                  , null: false, comment: "使用上の注意"
      t.text       :precautions_for_storage_and_handling , null: false, comment: "保存及び取扱いの注意"
      t.string     :country_of_origin                    , null: false, comment: "原産国名"
      t.string     :expiration_date_information          , null: false, comment: "賞味期限情報(製造から2年などの表記のためStringで定義)"
      t.string     :price                                , null: false, comment: "希望小売価格（税込）"
      t.string     :jan_code                             , null: false, comment: "JANコード"
      t.references :product_category                     , null: false, comment: "商品カテゴリ"

      t.timestamps
    end
  end
end
