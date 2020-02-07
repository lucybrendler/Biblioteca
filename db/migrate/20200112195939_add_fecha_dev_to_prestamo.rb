class AddFechaDevToPrestamo < ActiveRecord::Migration[5.2]
  def change
    add_column :prestamos, :fecha_dev, :date
  end
end
