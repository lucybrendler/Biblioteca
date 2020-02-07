class TipoMaterial < ApplicationRecord
 has_many :materials
#as_paper_trail

# relacion con otras tablas
  #belongs_to :materials
  #accepts_nested_attributes_for :materials
# Validaciones
  validates :descripcion, presence: true
  #validates_associated :materials

class << self
  def activo
    TipoMaterial.where('active != ?', true)
  end
end


# Funcion para listar segun este activo o no
# Todos los inactivos
  	scope :inactivo, -> {
  where('active != ?', true)
}
# Todos los activos
	scope :activo, -> {
  where(:active => true)
}
# Todos los registros
	scope :todos, -> {
  all
}
end

