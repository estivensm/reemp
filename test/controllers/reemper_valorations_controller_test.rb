require 'test_helper'

class ReemperValorationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reemper_valoration = reemper_valorations(:one)
  end

  test "should get index" do
    get reemper_valorations_url
    assert_response :success
  end

  test "should get new" do
    get new_reemper_valoration_url
    assert_response :success
  end

  test "should create reemper_valoration" do
    assert_difference('ReemperValoration.count') do
      post reemper_valorations_url, params: { reemper_valoration: { description: @reemper_valoration.description, reemper_id: @reemper_valoration.reemper_id, user_id_id: @reemper_valoration.user_id_id, valoration: @reemper_valoration.valoration } }
    end

    assert_redirected_to reemper_valoration_url(ReemperValoration.last)
  end

  test "should show reemper_valoration" do
    get reemper_valoration_url(@reemper_valoration)
    assert_response :success
  end

  test "should get edit" do
    get edit_reemper_valoration_url(@reemper_valoration)
    assert_response :success
  end

  test "should update reemper_valoration" do
    patch reemper_valoration_url(@reemper_valoration), params: { reemper_valoration: { description: @reemper_valoration.description, reemper_id: @reemper_valoration.reemper_id, user_id_id: @reemper_valoration.user_id_id, valoration: @reemper_valoration.valoration } }
    assert_redirected_to reemper_valoration_url(@reemper_valoration)
  end

  test "should destroy reemper_valoration" do
    assert_difference('ReemperValoration.count', -1) do
      delete reemper_valoration_url(@reemper_valoration)
    end

    assert_redirected_to reemper_valorations_url
  end
end
