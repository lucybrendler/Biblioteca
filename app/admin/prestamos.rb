ActiveAdmin.register Prestamo do



  permit_params :fecha, :admin_user_id, detalle_prestamos_attributes:[:id,  :prestamo_id, :material_id, :catidad_material ,:tipo_material_id ]
form do |f|
  inputs 'Detalles' do
   f.input :admin_user_id,  label: "usuario", :as => :select, :collection => AdminUser.all.map{|a|["#{a.username }", a.id]}
   f.input :fecha, label: "Fecha de Prestamo"
   #f.input :fecha_dev, label: "Fecha de Devolucion"



 f.inputs "Detalles" do
   
   f.has_many :detalle_prestamos do |i|
     
     i.input :material_id,  label: "Material", :as => :select, :collection => Material.all.map{|a|["#{a.descripcion }", a.id]}
     i.input :catidad_material, :hint => "Ingrese la cantidad"
     #i.input :devuelto, :as => :radio,collection:[:Si ,:no] 

    # => i.input :tipo_material_id ,  label: "Tipo de Material", :as => :select, :collection => TipoMaterial.all.map{|a|["#{a.descripcion }", a.id]}

   end
   
  end
  end

 f.actions
  
   end 
end