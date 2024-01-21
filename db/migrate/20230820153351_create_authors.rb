class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.string :whatsapp
      t.string :twitter
      t.integer :level
      t.references :school, null: false, foreign_key: true
      t.string :department

      t.timestamps
    end
  end
end
