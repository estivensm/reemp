require "application_system_test_case"

class ReempersTest < ApplicationSystemTestCase
  setup do
    @reemper = reempers(:one)
  end

  test "visiting the index" do
    visit reempers_url
    assert_selector "h1", text: "Reempers"
  end

  test "creating a Reemper" do
    visit reempers_url
    click_on "New Reemper"

    fill_in "Academy leve", with: @reemper.academy_leve
    fill_in "Academy level", with: @reemper.academy_level
    fill_in "Biography", with: @reemper.biography
    fill_in "Category", with: @reemper.category_id
    fill_in "Category name", with: @reemper.category_name
    fill_in "City", with: @reemper.city
    fill_in "Document numer", with: @reemper.document_numer
    fill_in "Document type", with: @reemper.document_type
    fill_in "Language", with: @reemper.language
    fill_in "Profession", with: @reemper.profession
    fill_in "Profession card", with: @reemper.profession_card
    fill_in "Specialty", with: @reemper.specialty_id
    fill_in "Specialty name", with: @reemper.specialty_name
    fill_in "University", with: @reemper.university
    fill_in "University state", with: @reemper.university_state
    fill_in "User", with: @reemper.user_id
    fill_in "Valoration", with: @reemper.valoration
    fill_in "Verified", with: @reemper.verified
    click_on "Create Reemper"

    assert_text "Reemper was successfully created"
    click_on "Back"
  end

  test "updating a Reemper" do
    visit reempers_url
    click_on "Edit", match: :first

    fill_in "Academy leve", with: @reemper.academy_leve
    fill_in "Academy level", with: @reemper.academy_level
    fill_in "Biography", with: @reemper.biography
    fill_in "Category", with: @reemper.category_id
    fill_in "Category name", with: @reemper.category_name
    fill_in "City", with: @reemper.city
    fill_in "Document numer", with: @reemper.document_numer
    fill_in "Document type", with: @reemper.document_type
    fill_in "Language", with: @reemper.language
    fill_in "Profession", with: @reemper.profession
    fill_in "Profession card", with: @reemper.profession_card
    fill_in "Specialty", with: @reemper.specialty_id
    fill_in "Specialty name", with: @reemper.specialty_name
    fill_in "University", with: @reemper.university
    fill_in "University state", with: @reemper.university_state
    fill_in "User", with: @reemper.user_id
    fill_in "Valoration", with: @reemper.valoration
    fill_in "Verified", with: @reemper.verified
    click_on "Update Reemper"

    assert_text "Reemper was successfully updated"
    click_on "Back"
  end

  test "destroying a Reemper" do
    visit reempers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reemper was successfully destroyed"
  end
end
