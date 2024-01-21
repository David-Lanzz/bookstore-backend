class AddAliasToSchool < ActiveRecord::Migration[7.1]
  def change
    add_column :schools, :alias, :string
  end
end
