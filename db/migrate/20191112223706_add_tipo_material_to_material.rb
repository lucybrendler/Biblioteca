class AddTipoMaterialToMaterial < ActiveRecord::Migration[5.2]
  def change
    add_reference :materials, :tipo_materials, foreign_key: true
  end
end
