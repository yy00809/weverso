require 'test_helper'
class EventsControllerTest < ActionDispatch::IntegrationTest
   setup do
     @event = events( :one)
   end

   test "should get home" do
     get events_url
     assert_response :success
     assert_template layout:'application'
   end

   test "should create event" do
     assert_difference('Event.count') do
       post events_url(@event), params: { event: { title: @event.title, description: @event.description,
         guest_capacity: @event.guest_capacity}}
     end

     assert_redirected_to event_url(Event.last)
   end

   test "should show event" do
     get event_url(@event)
     assert_response :success
   end

   test "should get edit" do
     get edit_event_url(@event)
     assert_response :success
   end

   test "should update event" do
     patch event_url(@event), params: { event: { title: @event.title, description: @event.description,
       guest_capacity: @event.guest_capacity}}
       assert_redirected_to event_url(@event)
   end

   test "should destroy event" do
     assert_difference('Event.count',-1) do
       delete event_url(@event)
     end

     assert_redirected_to events_url
   end

   test 'should get contact' do
     get contact_url
     assert_response :success
     assert_template layout:'application'
     assert_select 'title','Weverso'
     assert_select 'h1', 'Contact Us'
     assert_select 'p','Complete the following form to get in touch with us.'
   end

   test "should post request contact but no email" do
     post request_contact_url
     assert_response:redirect
     assert_not_empty flash[:alert]
     assert_nil flash[:notice]
   end

    test "should post request contact" do
      post request_contact_url, params:
      {name: "Matthew", email: "matthew@me.com",
        telephone: "1234567890", message: "Hello"}
      assert_response:redirect
      assert_nil flash[:alert]
      assert_not_empty flash[:notice]
    end
end
