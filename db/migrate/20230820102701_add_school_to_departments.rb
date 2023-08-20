class AddSchoolToDepartments < ActiveRecord::Migration[7.0]
  def change
    add_reference :departments, :school, null: false, foreign_key: true
  end
end
