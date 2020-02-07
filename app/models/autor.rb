class Autor < ApplicationRecord
has_many :materials

  # Validaciones
validates :nombre, :apellido, presence: true


end