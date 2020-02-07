class Prestamo < ApplicationRecord
  belongs_to :admin_user
  has_many :detalle_prestamos
    accepts_nested_attributes_for :detalle_prestamos

end
