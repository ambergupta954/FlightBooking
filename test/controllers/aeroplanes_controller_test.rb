require 'test_helper'

class AeroplanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aeroplane = aeroplanes(:one)
  end

  test "should get index" do
    get aeroplanes_url
    assert_response :success
  end

  test "should get new" do
    get new_aeroplane_url
    assert_response :success
  end

  test "should create aeroplane" do
    assert_difference('Aeroplane.count') do
      post aeroplanes_url, params: { aeroplane: { bc_column: @aeroplane.bc_column, bc_fare: @aeroplane.bc_fare, bc_row: @aeroplane.bc_row, ec_column: @aeroplane.ec_column, ec_fare: @aeroplane.ec_fare, ec_row: @aeroplane.ec_row, fc_column: @aeroplane.fc_column, fc_fare: @aeroplane.fc_fare, fc_row: @aeroplane.fc_row, plane_type: @aeroplane.plane_type, seats: @aeroplane.seats } }
    end

    assert_redirected_to aeroplane_url(Aeroplane.last)
  end

  test "should show aeroplane" do
    get aeroplane_url(@aeroplane)
    assert_response :success
  end

  test "should get edit" do
    get edit_aeroplane_url(@aeroplane)
    assert_response :success
  end

  test "should update aeroplane" do
    patch aeroplane_url(@aeroplane), params: { aeroplane: { bc_column: @aeroplane.bc_column, bc_fare: @aeroplane.bc_fare, bc_row: @aeroplane.bc_row, ec_column: @aeroplane.ec_column, ec_fare: @aeroplane.ec_fare, ec_row: @aeroplane.ec_row, fc_column: @aeroplane.fc_column, fc_fare: @aeroplane.fc_fare, fc_row: @aeroplane.fc_row, plane_type: @aeroplane.plane_type, seats: @aeroplane.seats } }
    assert_redirected_to aeroplane_url(@aeroplane)
  end

  test "should destroy aeroplane" do
    assert_difference('Aeroplane.count', -1) do
      delete aeroplane_url(@aeroplane)
    end

    assert_redirected_to aeroplanes_url
  end
end
