class RemovePrestamoFromMaterial < ActiveRecord::Migration[5.2]
  def change
    remove_reference :prestamos, :admin_users, foreign_key: true
  end
end
