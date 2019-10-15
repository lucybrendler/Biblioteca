class AddActivoToEditorial < ActiveRecord::Migration[5.2]
  def change
    add_column :editorials, :activo, :boolean
  end
end
