class AddDevueltoToPrestamo < ActiveRecord::Migration[5.2]
  def change
    add_column :prestamos, :devuelto, :boolean
  end
end
