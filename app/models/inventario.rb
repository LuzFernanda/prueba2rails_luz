class Inventario < ActiveRecord::Base
	validates :numserie,
	:uniqueness => true,
    :allow_nil => false
    belongs_to :operacion
end
