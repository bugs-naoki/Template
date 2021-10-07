# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_06_071615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_pictures", force: :cascade do |t|
    t.binary "picture", default: "", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_pictures_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false, comment: "商品名"
    t.text "catchphrase", null: false, comment: "キャッチフレーズ"
    t.text "detail", null: false, comment: "製品情報詳細"
    t.string "classification", null: false, comment: "栄養補助食品などの種別情報"
    t.string "target_animal", null: false, comment: "対象動物"
    t.text "raw_materials", null: false, comment: "原材料"
    t.text "principal_component", null: false, comment: "主成分"
    t.text "nutritional_information", null: false, comment: "栄養成分表示"
    t.string "amount", null: false, comment: "内容量"
    t.text "daily_dosage", null: false, comment: "1日の給与量"
    t.text "precautions_for_use", null: false, comment: "使用上の注意"
    t.text "precautions_for_storage_and_handling", null: false, comment: "保存及び取扱いの注意"
    t.string "country_of_origin", null: false, comment: "原産国名"
    t.string "expiration_date_information", null: false, comment: "賞味期限情報(製造から2年などの表記のためStringで定義)"
    t.string "price", null: false, comment: "希望小売価格（税込）"
    t.string "jan_code", null: false, comment: "JANコード"
    t.bigint "product_category_id", null: false, comment: "商品カテゴリ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "seminar_holding_methods", force: :cascade do |t|
    t.string "name", default: "", null: false, comment: "セミナーの形式（セミナー/オンラインサロン）"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_seminar_holding_methods_on_name", unique: true
  end

  create_table "seminar_targets", force: :cascade do |t|
    t.string "name", default: "", null: false, comment: "セミナーのターゲット（獣医師/動物看護師/トリマー)"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_seminar_targets_on_name", unique: true
  end

  create_table "seminars", force: :cascade do |t|
    t.string "title", default: "", null: false, comment: "セミナータイトル"
    t.binary "thumbnail", default: "", null: false, comment: "セミナーサムネイル画像"
    t.string "thumbnail_mime_type", default: "", null: false
    t.bigint "seminar_target_id", null: false, comment: "セミナーの対象（獣医師/動物看護師/トリマー"
    t.bigint "seminar_holding_method_id", null: false, comment: "セミナーの形式（セミナー/オンラインサロン）"
    t.text "description", default: "", null: false, comment: "概要"
    t.binary "pdf", default: "", null: false, comment: "チラシPDFリンク"
    t.text "recommend", default: "", null: false, comment: "こんな方におすすめ"
    t.text "appeal", default: "", null: false, comment: "ポイント"
    t.text "feedback", default: "", null: false, comment: "過去受講者の声"
    t.text "lecturer_profiles", default: "", null: false, comment: "講師情報"
    t.datetime "datetime_of_the_seminar", null: false, comment: "開催日時"
    t.text "program", default: "", null: false, comment: "プログラム"
    t.integer "course_fee", null: false, comment: "受講料"
    t.text "preparation", default: "", null: false, comment: "準備物"
    t.string "manual_link", default: "", null: false, comment: "受講マニュアルリンク"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["seminar_holding_method_id"], name: "index_seminars_on_seminar_holding_method_id"
    t.index ["seminar_target_id"], name: "index_seminars_on_seminar_target_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "product_pictures", "products"
  add_foreign_key "seminars", "seminar_holding_methods"
  add_foreign_key "seminars", "seminar_targets"
end
