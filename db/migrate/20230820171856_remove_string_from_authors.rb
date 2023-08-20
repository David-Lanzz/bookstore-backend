class RemoveStringFromAuthors < ActiveRecord::Migration[7.0]
  def change
    remove_column :authors, :string, :string
  end
end
