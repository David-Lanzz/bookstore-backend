class AddAliasToDepartments < ActiveRecord::Migration[7.0]
  def change
    add_column :departments, :alias, :string
  end
end
