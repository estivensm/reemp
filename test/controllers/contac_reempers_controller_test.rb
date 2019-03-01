require 'test_helper'

class ContacReempersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contac_reemper = contac_reempers(:one)
  end

  test "should get index" do
    get contac_reempers_url
    assert_response :success
  end

  test "should get new" do
    get new_contac_reemper_url
    assert_response :success
  end

  test "should create contac_reemper" do
    assert_difference('ContacReemper.count') do
      post contac_reempers_url, params: { contac_reemper: { description: @contac_reemper.description, reemper_id: @contac_reemper.reemper_id, user_id_id: @contac_reemper.user_id_id } }
    end

    assert_redirected_to contac_reemper_url(ContacReemper.last)
  end

  test "should show contac_reemper" do
    get contac_reemper_url(@contac_reemper)
    assert_response :success
  end

  test "should get edit" do
    get edit_contac_reemper_url(@contac_reemper)
    assert_response :success
  end

  test "should update contac_reemper" do
    patch contac_reemper_url(@contac_reemper), params: { contac_reemper: { description: @contac_reemper.description, reemper_id: @contac_reemper.reemper_id, user_id_id: @contac_reemper.user_id_id } }
    assert_redirected_to contac_reemper_url(@contac_reemper)
  end

  test "should destroy contac_reemper" do
    assert_difference('ContacReemper.count', -1) do
      delete contac_reemper_url(@contac_reemper)
    end

    assert_redirected_to contac_reempers_url
  end
end
