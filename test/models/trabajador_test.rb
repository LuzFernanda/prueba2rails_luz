require 'test_helper'

class TrabajadorTest < ActiveSupport::TestCase
  def setup
  	@trabajador = trabajadors(:trabajador_one)
  end
  
  test 'trabajador sin nombre debe ser invalido' do 
  	trabajador = Trabajador.new nombre:nil
  	assert_not trabajador.valid?
  end
 
  test 'trabajador tiene muchas operaciones' do
  	assert_includes @trabajador.operacions, operacions(:one)
  end
end
