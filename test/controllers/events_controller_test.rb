require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest

  test "should not save event without title" do
  	event = Event.new
  	assert_not event.save, "You saved the event without title"
  end

  test "should get index" do
  	get events_url
  	assert_response :success
  end

  test "should destroy event" do
  	assert_difference("Event.count", -1) do
  	  delete event_url(@event)
  	end

  	assert_redirected_to events_path
  end

end
