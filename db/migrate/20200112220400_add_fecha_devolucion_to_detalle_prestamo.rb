class AddFechaDevolucionToDetallePrestamo < ActiveRecord::Migration[5.2]
  def change
    add_column :detalle_prestamos, :fecha_devolucion, :date
  end
end
