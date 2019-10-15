ActiveAdmin.register Material do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  menu label: "Materiales"
  permit_params :descripcion, :cantidad, :disponible, :nro_material
   permit_params :creado
  #
  # or
  #
  # permit_params do
  #   permitted = [:descripcion, :cantidad, :disponible, :nro_material]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
