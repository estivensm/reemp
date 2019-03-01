require "application_system_test_case"

class ReemperValorationsTest < ApplicationSystemTestCase
  setup do
    @reemper_valoration = reemper_valorations(:one)
  end

  test "visiting the index" do
    visit reemper_valorations_url
    assert_selector "h1", text: "Reemper Valorations"
  end

  test "creating a Reemper valoration" do
    visit reemper_valorations_url
    click_on "New Reemper Valoration"

    fill_in "Description", with: @reemper_valoration.description
    fill_in "Reemper", with: @reemper_valoration.reemper_id
    fill_in "User id", with: @reemper_valoration.user_id_id
    fill_in "Valoration", with: @reemper_valoration.valoration
    click_on "Create Reemper valoration"

    assert_text "Reemper valoration was successfully created"
    click_on "Back"
  end

  test "updating a Reemper valoration" do
    visit reemper_valorations_url
    click_on "Edit", match: :first

    fill_in "Description", with: @reemper_valoration.description
    fill_in "Reemper", with: @reemper_valoration.reemper_id
    fill_in "User id", with: @reemper_valoration.user_id_id
    fill_in "Valoration", with: @reemper_valoration.valoration
    click_on "Update Reemper valoration"

    assert_text "Reemper valoration was successfully updated"
    click_on "Back"
  end

  test "destroying a Reemper valoration" do
    visit reemper_valorations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reemper valoration was successfully destroyed"
  end
end
