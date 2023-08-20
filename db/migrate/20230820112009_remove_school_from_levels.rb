class RemoveSchoolFromLevels < ActiveRecord::Migration[7.0]
  def change
    remove_column :levels, :school_id, :string
  end
end
