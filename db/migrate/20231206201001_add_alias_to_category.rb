class AddAliasToCategory < ActiveRecord::Migration[7.1]
  def change
    add_column :categories, :alias, :string
  end
end
