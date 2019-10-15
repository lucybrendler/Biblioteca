class Autor < ApplicationRecord
	# Validaciones
	validates :nombre, :apellido , presence: true

	class << self
    def activo
      Autor.where('Activo != ?', true)
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
