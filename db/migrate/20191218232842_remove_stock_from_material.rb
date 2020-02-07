class RemoveStockFromMaterial < ActiveRecord::Migration[5.2]
  def change
    remove_column :materials, :stock, :integer
  end
end
