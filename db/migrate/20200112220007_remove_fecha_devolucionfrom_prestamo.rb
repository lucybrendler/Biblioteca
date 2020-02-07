class RemoveFechaDevolucionfromPrestamo < ActiveRecord::Migration[5.2]
  def change
  	remove_column :detalle_prestamos, :fecha_devolucion
  end
end
