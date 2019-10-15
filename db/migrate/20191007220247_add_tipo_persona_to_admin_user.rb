class AddTipoPersonaToAdminUser < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_users, :tipo_persona, :boolean
    
  end
end
