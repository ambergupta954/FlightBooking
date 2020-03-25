require "application_system_test_case"

class AeroplanesTest < ApplicationSystemTestCase
  setup do
    @aeroplane = aeroplanes(:one)
  end

  test "visiting the index" do
    visit aeroplanes_url
    assert_selector "h1", text: "Aeroplanes"
  end

  test "creating a Aeroplane" do
    visit aeroplanes_url
    click_on "New Aeroplane"

    fill_in "Bc column", with: @aeroplane.bc_column
    fill_in "Bc fare", with: @aeroplane.bc_fare
    fill_in "Bc row", with: @aeroplane.bc_row
    fill_in "Ec column", with: @aeroplane.ec_column
    fill_in "Ec fare", with: @aeroplane.ec_fare
    fill_in "Ec row", with: @aeroplane.ec_row
    fill_in "Fc column", with: @aeroplane.fc_column
    fill_in "Fc fare", with: @aeroplane.fc_fare
    fill_in "Fc row", with: @aeroplane.fc_row
    fill_in "Plane type", with: @aeroplane.plane_type
    fill_in "Seats", with: @aeroplane.seats
    click_on "Create Aeroplane"

    assert_text "Aeroplane was successfully created"
    click_on "Back"
  end

  test "updating a Aeroplane" do
    visit aeroplanes_url
    click_on "Edit", match: :first

    fill_in "Bc column", with: @aeroplane.bc_column
    fill_in "Bc fare", with: @aeroplane.bc_fare
    fill_in "Bc row", with: @aeroplane.bc_row
    fill_in "Ec column", with: @aeroplane.ec_column
    fill_in "Ec fare", with: @aeroplane.ec_fare
    fill_in "Ec row", with: @aeroplane.ec_row
    fill_in "Fc column", with: @aeroplane.fc_column
    fill_in "Fc fare", with: @aeroplane.fc_fare
    fill_in "Fc row", with: @aeroplane.fc_row
    fill_in "Plane type", with: @aeroplane.plane_type
    fill_in "Seats", with: @aeroplane.seats
    click_on "Update Aeroplane"

    assert_text "Aeroplane was successfully updated"
    click_on "Back"
  end

  test "destroying a Aeroplane" do
    visit aeroplanes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aeroplane was successfully destroyed"
  end
end
