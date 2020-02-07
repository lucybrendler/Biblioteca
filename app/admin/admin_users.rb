ActiveAdmin.register AdminUser do
  menu label: "usuarios"

  permit_params :email, :password, :password_confirmation, :tipo_persona ,:username
  #permit_params :creado
  index do
    selectable_column
    id_column
    column ("Correo Electronico") { |admin_user| admin_user.email} 

    column ("Creado"){ |admin_user| admin_user.created_at}
    column ("Nombre"){|admin_user| admin_user.username}
  
    actions
  end

  index do
    selectable_column
    id_column
    column :email
    column :created_at 
    column :username
    actions
  end

  filter :email
  
  filter :created_at 

 filter :username
  form do |f|
    f.inputs do
      f.input :email
      f.input :tipo_persona, label: "Profesor"
      f.input :username, label: "Nombre de Usuario"
      f.input :password , label:  "contraseña"
      f.input :password_confirmation , label: "confirmar contraseña"
      #f.input :role, label: "Roles", :as => :select
    end
    f.actions
  end
  
  filter :creado
 show  title: "Usuario"  do
   attributes_table_for admin_user do
     row("email") {admin_user.email}
     row("Es profesor") {admin_user.tipo_persona}
     row("Nombre de usuario") {admin_user.username}
   end
 end


end