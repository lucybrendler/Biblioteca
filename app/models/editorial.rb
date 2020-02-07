class Editorial < ApplicationRecord

 has_many :materials

# Validaciones
  validates :descripcion, presence: true

#   class << self
#     def activo
#       Editorial.where('activo != ?', true)
#     end
# end

# # Funcion para listar segun este activo o no
# # Todos los inactivos
#   scope :inactivo, -> {
#   where('activo != ?', true)
# }
# # Todos los activos
#   scope :activo, -> {
#   where(:activo => true)
# }
# # Todos los registros
#   scope :todos, -> {
#   all
# }
end