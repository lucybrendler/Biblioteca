class AddActivoToAutor < ActiveRecord::Migration[5.2]
  def change
  	 add_column :autors, :activo, :boolean
  end
end
