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
  	assert_includes @trabajador.operacions, operacions(:operacion_one)
  end

  test 'borrar operaciones cuando el trabajado es eliminado' do
    @trabajador.destroy
    assert_empty Operacion.where(trabajador_id: @trabajador.id)
  end
end
