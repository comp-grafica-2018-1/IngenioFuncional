require 'test_helper'

class CotizMesExpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotiz_mes_exp = cotiz_mes_exps(:one)
  end

  test "should get index" do
    get cotiz_mes_exps_url
    assert_response :success
  end

  test "should get new" do
    get new_cotiz_mes_exp_url
    assert_response :success
  end

  test "should create cotiz_mes_exp" do
    assert_difference('CotizMesExp.count') do
      post cotiz_mes_exps_url, params: { cotiz_mes_exp: { correo: @cotiz_mes_exp.correo, nombre: @cotiz_mes_exp.nombre } }
    end

    assert_redirected_to cotiz_mes_exp_url(CotizMesExp.last)
  end

  test "should show cotiz_mes_exp" do
    get cotiz_mes_exp_url(@cotiz_mes_exp)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotiz_mes_exp_url(@cotiz_mes_exp)
    assert_response :success
  end

  test "should update cotiz_mes_exp" do
    patch cotiz_mes_exp_url(@cotiz_mes_exp), params: { cotiz_mes_exp: { correo: @cotiz_mes_exp.correo, nombre: @cotiz_mes_exp.nombre } }
    assert_redirected_to cotiz_mes_exp_url(@cotiz_mes_exp)
  end

  test "should destroy cotiz_mes_exp" do
    assert_difference('CotizMesExp.count', -1) do
      delete cotiz_mes_exp_url(@cotiz_mes_exp)
    end

    assert_redirected_to cotiz_mes_exps_url
  end
end
