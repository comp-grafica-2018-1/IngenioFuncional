require 'test_helper'

class CotizCloMulsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotiz_clo_mul = cotiz_clo_muls(:one)
  end

  test "should get index" do
    get cotiz_clo_muls_url
    assert_response :success
  end

  test "should get new" do
    get new_cotiz_clo_mul_url
    assert_response :success
  end

  test "should create cotiz_clo_mul" do
    assert_difference('CotizCloMul.count') do
      post cotiz_clo_muls_url, params: { cotiz_clo_mul: { correo: @cotiz_clo_mul.correo, nombre: @cotiz_clo_mul.nombre } }
    end

    assert_redirected_to cotiz_clo_mul_url(CotizCloMul.last)
  end

  test "should show cotiz_clo_mul" do
    get cotiz_clo_mul_url(@cotiz_clo_mul)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotiz_clo_mul_url(@cotiz_clo_mul)
    assert_response :success
  end

  test "should update cotiz_clo_mul" do
    patch cotiz_clo_mul_url(@cotiz_clo_mul), params: { cotiz_clo_mul: { correo: @cotiz_clo_mul.correo, nombre: @cotiz_clo_mul.nombre } }
    assert_redirected_to cotiz_clo_mul_url(@cotiz_clo_mul)
  end

  test "should destroy cotiz_clo_mul" do
    assert_difference('CotizCloMul.count', -1) do
      delete cotiz_clo_mul_url(@cotiz_clo_mul)
    end

    assert_redirected_to cotiz_clo_muls_url
  end
end
