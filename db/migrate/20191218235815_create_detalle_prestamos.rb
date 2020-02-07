class CreateDetallePrestamos < ActiveRecord::Migration[5.2]
  def change
    create_table :detalle_prestamos do |t|
      t.date :fecha
      t.integer :catidad_material
      t.integer :fecha_devolucion
      t.integer :devuelto
      t.references :material, foreign_key: true
      t.references :prestamo, foreign_key: true

      t.timestamps
    end
  end
end
