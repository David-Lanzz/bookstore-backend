class AddEmailToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :email, :string
  end
end
