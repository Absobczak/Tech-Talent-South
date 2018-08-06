require "application_system_test_case"

class StateHwsTest < ApplicationSystemTestCase
  setup do
    @state_hw = state_hws(:one)
  end

  test "visiting the index" do
    visit state_hws_url
    assert_selector "h1", text: "State Hws"
  end

  test "creating a State hw" do
    visit state_hws_url
    click_on "New State Hw"

    fill_in "Area", with: @state_hw.area
    fill_in "Capital", with: @state_hw.capital
    fill_in "Name", with: @state_hw.name
    fill_in "Population", with: @state_hw.population
    click_on "Create State hw"

    assert_text "State hw was successfully created"
    click_on "Back"
  end

  test "updating a State hw" do
    visit state_hws_url
    click_on "Edit", match: :first

    fill_in "Area", with: @state_hw.area
    fill_in "Capital", with: @state_hw.capital
    fill_in "Name", with: @state_hw.name
    fill_in "Population", with: @state_hw.population
    click_on "Update State hw"

    assert_text "State hw was successfully updated"
    click_on "Back"
  end

  test "destroying a State hw" do
    visit state_hws_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State hw was successfully destroyed"
  end
end
