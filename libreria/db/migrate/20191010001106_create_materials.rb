class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :descripcion
      t.string :cantidad
      t.string :disponible
      t.string :nro_material

      t.timestamps
    end
  end
end
