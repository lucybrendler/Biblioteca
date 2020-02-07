class AddCategoriaIdToMaterial < ActiveRecord::Migration[5.2]
  def change
    add_reference :materials, :categoria, foreign_key: true
  end
end
