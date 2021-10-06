class CreateSeminarTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :seminar_targets do |t|
      t.string :name, null: false, default: "", comment: "セミナーのターゲット（獣医師/動物看護師/トリマー)"

      t.timestamps
    end
    add_index :seminar_targets, :name, unique: true
  end
end
