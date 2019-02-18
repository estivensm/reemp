require 'test_helper'

class ConsultingRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consulting_room = consulting_rooms(:one)
  end

  test "should get index" do
    get consulting_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_consulting_room_url
    assert_response :success
  end

  test "should create consulting_room" do
    assert_difference('ConsultingRoom.count') do
      post consulting_rooms_url, params: { consulting_room: { address: @consulting_room.address, city: @consulting_room.city, first_photo: @consulting_room.first_photo, info_state: @consulting_room.info_state, lat: @consulting_room.lat, lng: @consulting_room.lng, reemper_id: @consulting_room.reemper_id, state: @consulting_room.state, sub_photo: @consulting_room.sub_photo, user_id: @consulting_room.user_id } }
    end

    assert_redirected_to consulting_room_url(ConsultingRoom.last)
  end

  test "should show consulting_room" do
    get consulting_room_url(@consulting_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_consulting_room_url(@consulting_room)
    assert_response :success
  end

  test "should update consulting_room" do
    patch consulting_room_url(@consulting_room), params: { consulting_room: { address: @consulting_room.address, city: @consulting_room.city, first_photo: @consulting_room.first_photo, info_state: @consulting_room.info_state, lat: @consulting_room.lat, lng: @consulting_room.lng, reemper_id: @consulting_room.reemper_id, state: @consulting_room.state, sub_photo: @consulting_room.sub_photo, user_id: @consulting_room.user_id } }
    assert_redirected_to consulting_room_url(@consulting_room)
  end

  test "should destroy consulting_room" do
    assert_difference('ConsultingRoom.count', -1) do
      delete consulting_room_url(@consulting_room)
    end

    assert_redirected_to consulting_rooms_url
  end
end
