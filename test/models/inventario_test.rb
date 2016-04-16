require 'test_helper'

class InventarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
 # end
 test 'inventario tiene una operacion' do
 	assert_not_nil inventarios(:one).operacion
 end
 
end
