class AddAliasToSchools < ActiveRecord::Migration[7.0]
  def change
    add_column :schools, :alias, :string
  end
end
