require "application_system_test_case"

class ConsultingRoomsTest < ApplicationSystemTestCase
  setup do
    @consulting_room = consulting_rooms(:one)
  end

  test "visiting the index" do
    visit consulting_rooms_url
    assert_selector "h1", text: "Consulting Rooms"
  end

  test "creating a Consulting room" do
    visit consulting_rooms_url
    click_on "New Consulting Room"

    fill_in "Address", with: @consulting_room.address
    fill_in "City", with: @consulting_room.city
    fill_in "First photo", with: @consulting_room.first_photo
    fill_in "Info state", with: @consulting_room.info_state
    fill_in "Lat", with: @consulting_room.lat
    fill_in "Lng", with: @consulting_room.lng
    fill_in "Reemper", with: @consulting_room.reemper_id
    fill_in "State", with: @consulting_room.state
    fill_in "Sub photo", with: @consulting_room.sub_photo
    fill_in "User", with: @consulting_room.user_id
    click_on "Create Consulting room"

    assert_text "Consulting room was successfully created"
    click_on "Back"
  end

  test "updating a Consulting room" do
    visit consulting_rooms_url
    click_on "Edit", match: :first

    fill_in "Address", with: @consulting_room.address
    fill_in "City", with: @consulting_room.city
    fill_in "First photo", with: @consulting_room.first_photo
    fill_in "Info state", with: @consulting_room.info_state
    fill_in "Lat", with: @consulting_room.lat
    fill_in "Lng", with: @consulting_room.lng
    fill_in "Reemper", with: @consulting_room.reemper_id
    fill_in "State", with: @consulting_room.state
    fill_in "Sub photo", with: @consulting_room.sub_photo
    fill_in "User", with: @consulting_room.user_id
    click_on "Update Consulting room"

    assert_text "Consulting room was successfully updated"
    click_on "Back"
  end

  test "destroying a Consulting room" do
    visit consulting_rooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consulting room was successfully destroyed"
  end
end
