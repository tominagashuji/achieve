require 'test_helper'

class AaaasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aaaa = aaaas(:one)
  end

  test "should get index" do
    get aaaas_url
    assert_response :success
  end

  test "should get new" do
    get new_aaaa_url
    assert_response :success
  end

  test "should create aaaa" do
    assert_difference('Aaaa.count') do
      post aaaas_url, params: { aaaa: { name: @aaaa.name } }
    end

    assert_redirected_to aaaa_url(Aaaa.last)
  end

  test "should show aaaa" do
    get aaaa_url(@aaaa)
    assert_response :success
  end

  test "should get edit" do
    get edit_aaaa_url(@aaaa)
    assert_response :success
  end

  test "should update aaaa" do
    patch aaaa_url(@aaaa), params: { aaaa: { name: @aaaa.name } }
    assert_redirected_to aaaa_url(@aaaa)
  end

  test "should destroy aaaa" do
    assert_difference('Aaaa.count', -1) do
      delete aaaa_url(@aaaa)
    end

    assert_redirected_to aaaas_url
  end
end
