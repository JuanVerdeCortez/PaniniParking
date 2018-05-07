require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest

  test "should get registro" do
    get static_registro_url
    assert_response :success
  end

  test "should get cliente" do
    get static_cliente_url
    assert_response :success
  end

  test "should get estacionamiento" do
    get static_estacionamiento_url
    assert_response :success
  end

  test "should get inicio" do
    get static_inicio_url
    assert_response :success
  end

end
