# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product_categories = %w(サプリメント スキンケア・コートケア イヤーケア オーラルケア 衛生用品・CO2 トリーツ その他)
product_categories.each do |v|
  ProductCategory.create!(name: v)
end

p = Product.create!(
  name: "商品名",
  catchphrase: "キャッチフレーズ",
  detail: "製品情報詳細",
  classification: "栄養補助食品などの種別情報",
  target_animal: "対象動物",
  raw_materials: "原材料",
  principal_component: "主成分",
  nutritional_information: "栄養成分表示",
  amount: "内容量",
  daily_dosage: "1日の給与量",
  precautions_for_use: "使用上の注意",
  precautions_for_storage_and_handling: "保存及び取扱いの注意",
  country_of_origin: "原産国名",
  expiration_date_information: "賞味期限情報(製造から2年などの表記のためStringで定義)",
  price: "希望小売価格（税込）",
  jan_code: "JANコード",
  product_category: ProductCategory.first,
)

ProductPicture.create!(
  picture: File.binread(Rails.root.join("public/product-sample1.jpg")),
  product: p,
)
ProductPicture.create!(
  picture: File.binread(Rails.root.join("public/product-sample2.jpg")),
  product: p,
)



SeminarTarget.create!( name: "獣医師" )
SeminarTarget.create!( name: "動物看護師" )
SeminarTarget.create!( name: "トリマー" )
SeminarHoldingMethod.create!(name: "セミナー")
SeminarHoldingMethod.create!(name: "オンラインサロン")

Seminar.create!(
  title: "セミナータイトル",
  thumbnail: "セミナーサムネイル画像",
  thumbnail_mime_type: "",
  seminar_target: SeminarTarget.first,
  seminar_holding_method: SeminarHoldingMethod.first,
  description: "概要",
  pdf: "チラシPDFリンク",
  recommend: "こんな方におすすめ",
  appeal: "ポイント",
  feedback: "過去受講者の声",
  lecturer_profiles: "講師情報",
  datetime_of_the_seminar: Time.zone.now + 10.day,
  program: "プログラム",
  course_fee: "受講料",
  preparation: "準備物",
  manual_link: "受講マニュアルリンク",
)
