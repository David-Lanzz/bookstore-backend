class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :whatsapp
      t.string :twitter
      t.string :department
      t.integer :level
      t.string :image

      t.timestamps
    end
  end
end
