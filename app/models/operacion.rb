class Operacion < ActiveRecord::Base
	belongs_to :trabajador
	has_one :inventario,dependent: :destroy
end
