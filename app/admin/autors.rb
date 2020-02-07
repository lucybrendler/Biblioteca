ActiveAdmin.register Autor do
  menu label: "Autor"

   permit_params :nombre , :apellido  
  

  filter :nombre
  filter :apellido


    index do
      selectable_column
   
      column ("Nombre") { |autor| autor.nombre} 

      column ("Apellido") { |autor| autor.apellido} 

     actions
   end
  

  show do
   attributes_table_for autor do
     row("Nombre") {autor.nombre}
      row("Apellido") {autor.apellido}
  
  end
 end

end