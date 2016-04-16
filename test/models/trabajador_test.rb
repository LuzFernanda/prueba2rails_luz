require 'test_helper'

class TrabajadorTest < ActiveSupport::TestCase
  test 'trabajador sin nombre debe ser invalido' do 
  	trabajador = Trabajador.new nombre:nil
  	assert_not trabajador.valid?
  end
end
