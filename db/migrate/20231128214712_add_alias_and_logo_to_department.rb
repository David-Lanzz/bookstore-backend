class AddAliasAndLogoToDepartment < ActiveRecord::Migration[7.1]
  def change
    add_column :departments, :alias, :string
    add_column :departments, :logo, :string
  end
end
