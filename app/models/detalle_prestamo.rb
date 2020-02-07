class DetallePrestamo < ApplicationRecord
  belongs_to :prestamo
  has_many :material
end
