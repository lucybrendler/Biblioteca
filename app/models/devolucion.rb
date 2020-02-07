class Devolucion < ActiveRecord::Base
  self.table_name = "prestamos"
  has_many :detalle_prestamos
    accepts_nested_attributes_for :detalle_prestamos
  


end