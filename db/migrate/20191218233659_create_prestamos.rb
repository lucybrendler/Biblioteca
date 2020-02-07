class CreatePrestamos < ActiveRecord::Migration[5.2]
  def change
    create_table :prestamos do |t|
      t.date :fecha
      t.references :admin_users, foreign_key: true

      t.timestamps
    end
  end
end
