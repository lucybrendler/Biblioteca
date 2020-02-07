class AddAdminUserIdToPrestamo < ActiveRecord::Migration[5.2]
  def change
    add_reference :prestamos, :admin_user, foreign_key: true
  end
end
