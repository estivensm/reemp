require "application_system_test_case"

class ContacReempersTest < ApplicationSystemTestCase
  setup do
    @contac_reemper = contac_reempers(:one)
  end

  test "visiting the index" do
    visit contac_reempers_url
    assert_selector "h1", text: "Contac Reempers"
  end

  test "creating a Contac reemper" do
    visit contac_reempers_url
    click_on "New Contac Reemper"

    fill_in "Description", with: @contac_reemper.description
    fill_in "Reemper", with: @contac_reemper.reemper_id
    fill_in "User id", with: @contac_reemper.user_id_id
    click_on "Create Contac reemper"

    assert_text "Contac reemper was successfully created"
    click_on "Back"
  end

  test "updating a Contac reemper" do
    visit contac_reempers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @contac_reemper.description
    fill_in "Reemper", with: @contac_reemper.reemper_id
    fill_in "User id", with: @contac_reemper.user_id_id
    click_on "Update Contac reemper"

    assert_text "Contac reemper was successfully updated"
    click_on "Back"
  end

  test "destroying a Contac reemper" do
    visit contac_reempers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contac reemper was successfully destroyed"
  end
end
