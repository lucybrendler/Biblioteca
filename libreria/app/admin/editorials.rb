ActiveAdmin.register Editorial do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  menu label: "Editorial"
   permit_params :descripcion
   permit_params :creado

controller do
   def destroy
     editorial = Editorial.find(params[:id])
     editorial.update_attribute(:activo, false)
     redirect_to admin_editorial_path
   end
 end
 
 
  scope :inactivo
 scope :activo, :default => true
 scope :todos


  index do
      selectable_column
      id_column
      column ("descripcion") { |editorial| editorial.descripcion} 

      column ("creado"){ |editorial| editorial.created_at}
    
      actions
    end

  filter :creado

  form do |f|
    f.inputs do
      f.input :created_at, label: "creado"
      f.input :activo, label: "Activo"
    
    f.actions
  end
end
 show do
   attributes_table_for editorial do
     row("Editorial") {Editorial.editorial}
     row("Activo") {editorial.activo}
   end
 end


  #
  # or
  #
  # permit_params do
  #   permitted = [:descripcion]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
