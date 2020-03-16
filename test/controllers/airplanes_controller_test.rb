require 'test_helper'

class AirplanesControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get airplanes_homepage_url
    assert_response :success
  end

end
