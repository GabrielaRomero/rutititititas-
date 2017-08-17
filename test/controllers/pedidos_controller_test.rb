require 'test_helper'

class PedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido = pedidos(:one)
  end

  test "should get index" do
    get pedidos_url
    assert_response :success
  end

  test "should get new" do
    post line_items_url, params: { reserva_id: reservas(:ruby).id } 


    get new_pedido_url
    assert_response :success
  end

  test "should create pedido" do
    assert_difference('Pedido.count') do
      post pedidos_url, params: { pedido: { \: @pedido.\, direccion: @pedido.direccion, email: @pedido.email, nombre: @pedido.nombre, tipo_de_pago: @pedido.tipo_de_pago } }
    end

    assert_redirected_to pedido_url(Pedido.last)
  end

  test "should show pedido" do
    get pedido_url(@pedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedido_url(@pedido)
    assert_response :success
  end

  test "should update pedido" do
    patch pedido_url(@pedido), params: { pedido: { \: @pedido.\, direccion: @pedido.direccion, email: @pedido.email, nombre: @pedido.nombre, tipo_de_pago: @pedido.tipo_de_pago } }
    assert_redirected_to pedido_url(@pedido)
  end

  test "should destroy pedido" do
    assert_difference('Pedido.count', -1) do
      delete pedido_url(@pedido)
    end

    assert_redirected_to pedidos_url
  end

test "requires item in cart" do 
get new_pedido_url 
assert_redirected_to store_index_path 
assert_equal flash[:notice], 'Your cart is empty' 
end 

end
