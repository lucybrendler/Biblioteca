ActiveAdmin.register Editorial do

  menu label: "Editorial"
   permit_params :descripcion  

   filter :descripcion 
  

     index do
      selectable_column
   
      column ("descripcion") { |editorial| editorial.descripcion} 
     actions
   end



 show do
   attributes_table_for editorial do
     row("editorial") {editorial.descripcion}
     #row("Activo") {editorial.activo}
  end
 end


end
