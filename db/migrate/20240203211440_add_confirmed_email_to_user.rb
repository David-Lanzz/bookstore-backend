class AddConfirmedEmailToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :confirmed_email, :boolean
  end
end
