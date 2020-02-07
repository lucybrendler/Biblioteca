ActiveAdmin.register Categoria do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #

  menu label: "Categoria"
  permit_params :descripcion , :activo
  #permit_params :creado
  filter :descripcion
 
 
    index do
      selectable_column
   
      column "descripcion", :descripcion

     

     actions
   end
  

  show do
   attributes_table_for categoria do
     row("categoria") {categoria.descripcion}
  
  end
  end


  # or
  #
  # permit_params do
  #   permitted = [:descripcion]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
