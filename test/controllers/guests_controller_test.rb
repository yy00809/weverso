require 'test_helper'

class GuestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guest = guests( :one)
    @event = events( :one)
  end

  test "should create guest" do
    assert_difference('Guest.count') do
      post event_guests_url(@event,@guest), params: { guest: { fullname: @guest.fullname, email: @guest.email,
                                                      phonenumber: @guest.phonenumber, event: @guest.event}}
    end
  end
end
