require "application_system_test_case"

class TripsTest < ApplicationSystemTestCase
  setup do
    @trip = trips(:one)
  end

  test "visiting the index" do
    visit trips_url
    assert_selector "h1", text: "Trips"
  end

  test "creating a Trip" do
    visit trips_url
    click_on "New Trip"

    fill_in "Adults", with: @trip.adults
    fill_in "Avility", with: @trip.avility
    fill_in "Budget", with: @trip.budget
    fill_in "Budget description", with: @trip.budget_description
    fill_in "Date", with: @trip.date
    fill_in "Description", with: @trip.description
    fill_in "Donations", with: @trip.donations
    fill_in "Grampas", with: @trip.grampas
    fill_in "Kids", with: @trip.kids
    fill_in "Location", with: @trip.location
    fill_in "Route", with: @trip.route
    fill_in "Title", with: @trip.title
    fill_in "Workshop", with: @trip.workshop
    click_on "Create Trip"

    assert_text "Trip was successfully created"
    click_on "Back"
  end

  test "updating a Trip" do
    visit trips_url
    click_on "Edit", match: :first

    fill_in "Adults", with: @trip.adults
    fill_in "Avility", with: @trip.avility
    fill_in "Budget", with: @trip.budget
    fill_in "Budget description", with: @trip.budget_description
    fill_in "Date", with: @trip.date
    fill_in "Description", with: @trip.description
    fill_in "Donations", with: @trip.donations
    fill_in "Grampas", with: @trip.grampas
    fill_in "Kids", with: @trip.kids
    fill_in "Location", with: @trip.location
    fill_in "Route", with: @trip.route
    fill_in "Title", with: @trip.title
    fill_in "Workshop", with: @trip.workshop
    click_on "Update Trip"

    assert_text "Trip was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip" do
    visit trips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip was successfully destroyed"
  end
end
