class Material < ApplicationRecord
	#validates :descripcion, :cantidad ,:nro_material , :disponible , presence: true

  belongs_to :tipo_material
  
  belongs_to :editorial

  belongs_to :autor
  belongs_to :categoria
  belongs_to :detalle_prestamo


  
	class << self
    def activo
      Material.where('Activo != ?', true)
    end
end

# Funcion para listar segun este activo o no
# Todos los inactivos
	scope :inactivo, -> {
  where('activo != ?', true)
}
# Todos los activos
	scope :Activo, -> {
  where(:Activo => true)
}
# Todos los registros
	scope :todos, -> {
  all
}
end
