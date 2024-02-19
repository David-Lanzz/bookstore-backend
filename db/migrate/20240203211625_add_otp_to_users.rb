class AddOtpToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :otp, :string
  end
end
