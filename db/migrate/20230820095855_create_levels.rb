class CreateLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :levels do |t|
      t.references :department, null: false, foreign_key: true
      t.integer :number
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
