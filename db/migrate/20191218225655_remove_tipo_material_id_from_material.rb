class RemoveTipoMaterialIdFromMaterial < ActiveRecord::Migration[5.2]
  def change
    remove_reference :materials, :tipo_materials, foreign_key: true
  end
end
