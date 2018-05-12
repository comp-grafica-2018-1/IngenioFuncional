require 'test_helper'

class CotizEscCamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cotiz_esc_cam = cotiz_esc_cams(:one)
  end

  test "should get index" do
    get cotiz_esc_cams_url
    assert_response :success
  end

  test "should get new" do
    get new_cotiz_esc_cam_url
    assert_response :success
  end

  test "should create cotiz_esc_cam" do
    assert_difference('CotizEscCam.count') do
      post cotiz_esc_cams_url, params: { cotiz_esc_cam: { correo: @cotiz_esc_cam.correo, nombre: @cotiz_esc_cam.nombre } }
    end

    assert_redirected_to cotiz_esc_cam_url(CotizEscCam.last)
  end

  test "should show cotiz_esc_cam" do
    get cotiz_esc_cam_url(@cotiz_esc_cam)
    assert_response :success
  end

  test "should get edit" do
    get edit_cotiz_esc_cam_url(@cotiz_esc_cam)
    assert_response :success
  end

  test "should update cotiz_esc_cam" do
    patch cotiz_esc_cam_url(@cotiz_esc_cam), params: { cotiz_esc_cam: { correo: @cotiz_esc_cam.correo, nombre: @cotiz_esc_cam.nombre } }
    assert_redirected_to cotiz_esc_cam_url(@cotiz_esc_cam)
  end

  test "should destroy cotiz_esc_cam" do
    assert_difference('CotizEscCam.count', -1) do
      delete cotiz_esc_cam_url(@cotiz_esc_cam)
    end

    assert_redirected_to cotiz_esc_cams_url
  end
end
