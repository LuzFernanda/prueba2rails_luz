require 'test_helper'

class OperacionTest < ActiveSupport::TestCase
  test 'operacion tiene un trabajador' do
  	assert_not_nil operacions(:one).trabajador
  end
end
