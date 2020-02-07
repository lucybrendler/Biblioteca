class CreateMermas < ActiveRecord::Migration[5.2]
  def change
    create_table :mermas do |t|
      t.date :fecha
      t.integer :cantidad
      t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
