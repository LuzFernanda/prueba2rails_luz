require 'test_helper'

class OperacionTest < ActiveSupport::TestCase
  test 'operacion tiene un trabajador' do
  	assert_not_nil operacions(:operacion_one).trabajador
  end
  def setup
  	@operacion = operacions(:operacion_one)
  end
  test 'operacion tiene un inventario' do
  	assert_includes @operacion.inventario,inventarios(:one)
  end
end
