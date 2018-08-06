require 'test_helper'

class StateHwsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_hw = state_hws(:one)
  end

  test "should get index" do
    get state_hws_url
    assert_response :success
  end

  test "should get new" do
    get new_state_hw_url
    assert_response :success
  end

  test "should create state_hw" do
    assert_difference('StateHw.count') do
      post state_hws_url, params: { state_hw: { area: @state_hw.area, capital: @state_hw.capital, name: @state_hw.name, population: @state_hw.population } }
    end

    assert_redirected_to state_hw_url(StateHw.last)
  end

  test "should show state_hw" do
    get state_hw_url(@state_hw)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_hw_url(@state_hw)
    assert_response :success
  end

  test "should update state_hw" do
    patch state_hw_url(@state_hw), params: { state_hw: { area: @state_hw.area, capital: @state_hw.capital, name: @state_hw.name, population: @state_hw.population } }
    assert_redirected_to state_hw_url(@state_hw)
  end

  test "should destroy state_hw" do
    assert_difference('StateHw.count', -1) do
      delete state_hw_url(@state_hw)
    end

    assert_redirected_to state_hws_url
  end
end
