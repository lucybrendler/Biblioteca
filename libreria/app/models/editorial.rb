class Editorial < ApplicationRecord
# has_many :autor

    # has_paper_trail

	


# Validaciones
	validates :descripcion, presence: true

	class << self
    def activo
      Editorial.where('Activo != ?', true)
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