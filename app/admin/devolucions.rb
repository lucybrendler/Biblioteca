ActiveAdmin.register Devolucion do
  menu  label: "Devolucion"
    actions :all, :except => [ :new, :destroy]

permit_params :fecha, :admin_user_id, :fecha_dev, detalle_prestamos_attributes:[:id, :prestamo_id, :material_id, :catidad_material , :cantidad_devuelto]



form do |f|
  inputs 'Detalles' do
   f.input :admin_user_id,  label: "usuario", :as => :select, :collection => AdminUser.all.map{|a|["#{a.username }", a.id]}
   f.input :fecha, label: "Fecha de Prestamo"
   f.input :fecha_dev, label: "Fecha de Devolucion"


 f.inputs "Detalles" do
   f.has_many :detalle_prestamos do |i|
     #i.input :tipo_materials_id,  label: "Tipo de Material", :as => :select, :collection => TipoMaterial.all.map{|a|["#{a.descripcion }", a.id]}
     i.input :material_id,  label: "Material", :as => :select, :collection => Material.all.map{|a|["#{a.descripcion }", a.id]}
     i.input :catidad_material, :hint => "Ingrese la cantidad"
     i.input :devuelto, :as => :radio,collection:[:Si ,:no] 
     i.input :cantidad_devuelto, :hint => "Ingrese la cantidad devuelto"




   end
   
  end
  end

 f.actions
  
   end 
end
