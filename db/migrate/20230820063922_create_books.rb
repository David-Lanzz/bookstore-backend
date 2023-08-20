class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.references :author, null: false, foreign_key: true
      t.string :title
      t.string :category
      t.integer :pages
      t.integer :progress

      t.timestamps
    end
  end
end
