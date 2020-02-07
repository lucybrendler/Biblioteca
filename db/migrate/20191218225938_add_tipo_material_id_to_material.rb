class AddTipoMaterialIdToMaterial < ActiveRecord::Migration[5.2]
  def change
    add_reference :materials, :tipo_material, foreign_key: true
  end
end
