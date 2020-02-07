class AddAutorToMaterial < ActiveRecord::Migration[5.2]
  def change
    add_reference :materials, :autor, foreign_key: true
  end
end
