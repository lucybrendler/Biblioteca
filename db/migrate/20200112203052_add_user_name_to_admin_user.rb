class AddUserNameToAdminUser < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_users, :username, :string
  end
end
