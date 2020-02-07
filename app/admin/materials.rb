ActiveAdmin.register Material do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  menu label: "Materiales"
  permit_params :descripcion, :cantidad, :disponible, :nro_material, :editorial_id , :autor_id, :tipo_material_id , :categoria_id , :activo
   #permit_params :creado
  #er :editorial_id,  :as => :select, :collection => Editorial.activo.map{|a|["#{a.descripcion}", a.id]}
 


  index do
      selectable_column
     
        column ("descripcion") { |material| material.descripcion} 
        column ("cantidad") { |material| material.cantidad} 
        column ("disponible") { |material| material.disponible} 
        column ("nro_material") { |material| material.nro_material} 
        #column ("tipo material") {|tipo_material| tipo_material.descripcion}
        #column(:editorial) {|editorial| editorial.edi_descripcion}
        #column(:Autor) {|autor| autor.descripcion}
        

     actions
   end

  
 form title: 'Materiales' do |f|
    inputs 'Detalles' do 
      input :tipo_material_id,  label: "tipo materiales", :as => :select, :collection => TipoMaterial.all.map{|a|["#{a.descripcion}", a.id] }
      input :categoria_id ,  label: "categoria", :as => :select, :collection => Categoria.all.map{|a|["#{a.descripcion}",   a.id]}
      input :editorial_id,       label: "editoriales",     :as => :select, :collection =>  Editorial.all.map{|a|["#{a.descripcion}", a.id]}
      input :autor_id,  label: "Autores", :as => :select, :collection => Autor.all.map{|a|["#{a.nombre}", a.id]}
      input :descripcion, label: "Descripcion"
      input :cantidad , label: "cantidad"
      input :nro_material,label: "nro de material"    
      
      input :disponible, :as => :radio,collection:[:Si ,:no] 
     
    end
    f.actions
    end




 
  show :title => "Detalles" do 
    attributes_table_for material do

   #row(:tipo_material) { |a| a.tipo_material.descripcion}
  row(:editorial) { |payment| payment.editorial.descripcion }
  row("tipo de material") { |payment| payment.tipo_material.descripcion }
  row(:autor) { |payment| payment.autor.nombre }
  row(:categoria) { |payment| payment.categoria.descripcion }
  row("descripcion") { material.descripcion }
  row("cantidad") { material.cantidad }
  row("nro_material") { material.nro_material }
    #row("stock") { material.stock }
   #row :descripcion
   #row :cantidad
   #row :nro_material
   row :disponible
       end
    end
 
end