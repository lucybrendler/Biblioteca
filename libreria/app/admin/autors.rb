ActiveAdmin.register Autor do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #


  menu label: "Autor"
  permit_params :nombre, :apellido , :activo
  permit_params :creado

#
  # or
  #
  # permit_params do
  #   permitted = [:nombre, :apellido]
    #permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
