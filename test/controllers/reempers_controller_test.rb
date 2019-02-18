require 'test_helper'

class ReempersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reemper = reempers(:one)
  end

  test "should get index" do
    get reempers_url
    assert_response :success
  end

  test "should get new" do
    get new_reemper_url
    assert_response :success
  end

  test "should create reemper" do
    assert_difference('Reemper.count') do
      post reempers_url, params: { reemper: { academy_leve: @reemper.academy_leve, academy_level: @reemper.academy_level, biography: @reemper.biography, category_id: @reemper.category_id, category_name: @reemper.category_name, city: @reemper.city, document_numer: @reemper.document_numer, document_type: @reemper.document_type, language: @reemper.language, profession: @reemper.profession, profession_card: @reemper.profession_card, specialty_id: @reemper.specialty_id, specialty_name: @reemper.specialty_name, university: @reemper.university, university_state: @reemper.university_state, user_id: @reemper.user_id, valoration: @reemper.valoration, verified: @reemper.verified } }
    end

    assert_redirected_to reemper_url(Reemper.last)
  end

  test "should show reemper" do
    get reemper_url(@reemper)
    assert_response :success
  end

  test "should get edit" do
    get edit_reemper_url(@reemper)
    assert_response :success
  end

  test "should update reemper" do
    patch reemper_url(@reemper), params: { reemper: { academy_leve: @reemper.academy_leve, academy_level: @reemper.academy_level, biography: @reemper.biography, category_id: @reemper.category_id, category_name: @reemper.category_name, city: @reemper.city, document_numer: @reemper.document_numer, document_type: @reemper.document_type, language: @reemper.language, profession: @reemper.profession, profession_card: @reemper.profession_card, specialty_id: @reemper.specialty_id, specialty_name: @reemper.specialty_name, university: @reemper.university, university_state: @reemper.university_state, user_id: @reemper.user_id, valoration: @reemper.valoration, verified: @reemper.verified } }
    assert_redirected_to reemper_url(@reemper)
  end

  test "should destroy reemper" do
    assert_difference('Reemper.count', -1) do
      delete reemper_url(@reemper)
    end

    assert_redirected_to reempers_url
  end
end
