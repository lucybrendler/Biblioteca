class AddActivoToMaterial < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :activo, :boolean
  end
end
