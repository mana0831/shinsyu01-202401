require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "should create event" do
    visit events_url
    click_on "New event"

    fill_in "Discription", with: @event.discription
    fill_in "Event at", with: @event.event_at
    fill_in "Event date", with: @event.event_date
    check "House" if @event.house
    fill_in "Name", with: @event.name
    check "Outside" if @event.outside
    fill_in "People", with: @event.people
    fill_in "People participants", with: @event.people_participants
    fill_in "People remaining", with: @event.people_remaining
    fill_in "Picture", with: @event.picture
    fill_in "Point", with: @event.point
    fill_in "Title", with: @event.title
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should update Event" do
    visit event_url(@event)
    click_on "Edit this event", match: :first

    fill_in "Discription", with: @event.discription
    fill_in "Event at", with: @event.event_at
    fill_in "Event date", with: @event.event_date
    check "House" if @event.house
    fill_in "Name", with: @event.name
    check "Outside" if @event.outside
    fill_in "People", with: @event.people
    fill_in "People participants", with: @event.people_participants
    fill_in "People remaining", with: @event.people_remaining
    fill_in "Picture", with: @event.picture
    fill_in "Point", with: @event.point
    fill_in "Title", with: @event.title
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "should destroy Event" do
    visit event_url(@event)
    click_on "Destroy this event", match: :first

    assert_text "Event was successfully destroyed"
  end
end
