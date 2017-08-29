require 'test_helper'

class DeudasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deuda = deudas(:one)
  end

  test "should get index" do
    get deudas_url, as: :json
    assert_response :success
  end

  test "should create deuda" do
    assert_difference('Deuda.count') do
      post deudas_url, params: { deuda: { correo: @deuda.correo, correo: @deuda.correo, interes: @deuda.interes, nombre: @deuda.nombre, telefono: @deuda.telefono, valor: @deuda.valor } }, as: :json
    end

    assert_response 201
  end

  test "should show deuda" do
    get deuda_url(@deuda), as: :json
    assert_response :success
  end

  test "should update deuda" do
    patch deuda_url(@deuda), params: { deuda: { correo: @deuda.correo, correo: @deuda.correo, interes: @deuda.interes, nombre: @deuda.nombre, telefono: @deuda.telefono, valor: @deuda.valor } }, as: :json
    assert_response 200
  end

  test "should destroy deuda" do
    assert_difference('Deuda.count', -1) do
      delete deuda_url(@deuda), as: :json
    end

    assert_response 204
  end
end
