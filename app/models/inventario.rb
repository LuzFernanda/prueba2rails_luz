class Inventario < ActiveRecord::Base
	validates :numserie,
	:uniqueness => true,
    :allow_nil => false
end
