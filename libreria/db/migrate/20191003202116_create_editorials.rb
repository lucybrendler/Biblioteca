class CreateEditorials < ActiveRecord::Migration[5.2]
  def change
    create_table :editorials do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
