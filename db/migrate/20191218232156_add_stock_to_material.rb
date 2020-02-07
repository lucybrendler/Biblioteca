class AddStockToMaterial < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :stock, :integer
  end
end
