require "test_helper"

class HotelRoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hotel_rooms_index_url
    assert_response :success
  end

  test "should get show" do
    get hotel_rooms_show_url
    assert_response :success
  end
end
