class AddDevolucionToDetallePrestamo < ActiveRecord::Migration[5.2]
  def change
 
    add_column :detalle_prestamos, :cantidad_devuelto, :integer
  end
end
