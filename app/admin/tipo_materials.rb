ActiveAdmin.register TipoMaterial do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  menu label: "Tipos de Materiales"
  permit_params :descripcion 
filter :descripcion 


    index do
      selectable_column
   
      column ("descripcion") { |tipo_Material| tipo_Material.descripcion} 
     actions
   end
  
 
  # Vista show
   show :title => :descripcion  do
     attributes_table do
       row :descripcion
     
     end
   end

end