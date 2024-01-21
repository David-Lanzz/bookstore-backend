class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :category
      t.integer :pages
      t.integer :progress
      t.string :link
      t.references :author, null: false, foreign_key: true
      t.references :school, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true
      t.references :level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
