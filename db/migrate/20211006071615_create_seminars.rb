class CreateSeminars < ActiveRecord::Migration[6.1]
  def change
    create_table :seminars do |t|
      t.string :title, null: false, default: "", comment: "セミナータイトル"
      t.binary :thumbnail, null: false, default: "", comment: "セミナーサムネイル画像"
      t.string :thumbnail_mime_type, null: false, default: "", comment: ""
      t.references :seminar_target, null: false, foreign_key: true, comment: "セミナーの対象（獣医師/動物看護師/トリマー"
      t.references :seminar_holding_method, null: false, foreign_key: true, comment: "セミナーの形式（セミナー/オンラインサロン）"
      t.text :description, null: false, default: "", comment: "概要"
      t.binary :pdf, null: false, default: "", comment: "チラシPDFリンク"
      t.text :recommend, null: false, default: "", comment: "こんな方におすすめ"
      t.text :appeal, null: false, default: "", comment: "ポイント"
      t.text :feedback, null: false, default: "", comment: "過去受講者の声"
      t.text :lecturer_profiles, null: false, default: "", comment: "講師情報"
      t.datetime :datetime_of_the_seminar, null: false, default: "", comment: "開催日時"
      t.text :program, null: false, default: "", comment: "プログラム"
      t.integer :course_fee, null: false, default: "", comment: "受講料"
      t.text :preparation, null: false, default: "", comment: "準備物"
      t.string :manual_link, null: false, default: "", comment: "受講マニュアルリンク"

      t.timestamps
    end
  end
end
