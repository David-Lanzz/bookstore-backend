class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.references :level, null: false, foreign_key: true
      t.string :logo

      t.timestamps
    end
  end
end
