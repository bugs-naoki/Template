class CreateSeminarHoldingMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :seminar_holding_methods do |t|
      t.string :name, null: false, default: "", comment: "セミナーの形式（セミナー/オンラインサロン）"

      t.timestamps
    end
    add_index :seminar_holding_methods, :name, unique: true
  end
end
