require 'test_helper'

class CotizMesCamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotiz_mes_cam = cotiz_mes_cams(:one)
  end

  test "should get index" do
    get cotiz_mes_cams_url
    assert_response :success
  end

  test "should get new" do
    get new_cotiz_mes_cam_url
    assert_response :success
  end

  test "should create cotiz_mes_cam" do
    assert_difference('CotizMesCam.count') do
      post cotiz_mes_cams_url, params: { cotiz_mes_cam: { correo: @cotiz_mes_cam.correo, nombre: @cotiz_mes_cam.nombre } }
    end

    assert_redirected_to cotiz_mes_cam_url(CotizMesCam.last)
  end

  test "should show cotiz_mes_cam" do
    get cotiz_mes_cam_url(@cotiz_mes_cam)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotiz_mes_cam_url(@cotiz_mes_cam)
    assert_response :success
  end

  test "should update cotiz_mes_cam" do
    patch cotiz_mes_cam_url(@cotiz_mes_cam), params: { cotiz_mes_cam: { correo: @cotiz_mes_cam.correo, nombre: @cotiz_mes_cam.nombre } }
    assert_redirected_to cotiz_mes_cam_url(@cotiz_mes_cam)
  end

  test "should destroy cotiz_mes_cam" do
    assert_difference('CotizMesCam.count', -1) do
      delete cotiz_mes_cam_url(@cotiz_mes_cam)
    end

    assert_redirected_to cotiz_mes_cams_url
  end
end
