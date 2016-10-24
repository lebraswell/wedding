require 'test_helper'

class RsvPsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rsvp = rsvps(:one)
  end

  test "should get index" do
    get rsvps_url
    assert_response :success
  end

  test "should get new" do
    get new_rsvp_url
    assert_response :success
  end

  test "should create rsvp" do
    assert_difference('Rsvp.count') do
      post rsvps_url, params: { rsvp: { address: @rsvp.address, city: @rsvp.city, coming: @rsvp.coming, name: @rsvp.name, state: @rsvp.state, zip: @rsvp.zip } }
    end

    assert_redirected_to rsvp_url(Rsvp.last)
  end

  test "should show rsvp" do
    get rsvp_url(@rsvp)
    assert_response :success
  end

  test "should get edit" do
    get edit_rsvp_url(@rsvp)
    assert_response :success
  end

  test "should update rsvp" do
    patch rsvp_url(@rsvp), params: { rsvp: { address: @rsvp.address, city: @rsvp.city, coming: @rsvp.coming, name: @rsvp.name, state: @rsvp.state, zip: @rsvp.zip } }
    assert_redirected_to rsvp_url(@rsvp)
  end

  test "should destroy rsvp" do
    assert_difference('Rsvp.count', -1) do
      delete rsvp_url(@rsvp)
    end

    assert_redirected_to rsvps_url
  end
end
