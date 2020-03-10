require "application_system_test_case"

class BackpackersTest < ApplicationSystemTestCase
  setup do
    @backpacker = backpackers(:one)
  end

  test "visiting the index" do
    visit backpackers_url
    assert_selector "h1", text: "Backpackers"
  end

  test "creating a Backpacker" do
    visit backpackers_url
    click_on "New Backpacker"

    fill_in "Age", with: @backpacker.age
    fill_in "Email", with: @backpacker.email
    fill_in "Lastname", with: @backpacker.lastname
    fill_in "Name", with: @backpacker.name
    fill_in "Nationality", with: @backpacker.nationality
    fill_in "Phone", with: @backpacker.phone
    fill_in "Profession", with: @backpacker.profession
    fill_in "Trip", with: @backpacker.trip_id
    click_on "Create Backpacker"

    assert_text "Backpacker was successfully created"
    click_on "Back"
  end

  test "updating a Backpacker" do
    visit backpackers_url
    click_on "Edit", match: :first

    fill_in "Age", with: @backpacker.age
    fill_in "Email", with: @backpacker.email
    fill_in "Lastname", with: @backpacker.lastname
    fill_in "Name", with: @backpacker.name
    fill_in "Nationality", with: @backpacker.nationality
    fill_in "Phone", with: @backpacker.phone
    fill_in "Profession", with: @backpacker.profession
    fill_in "Trip", with: @backpacker.trip_id
    click_on "Update Backpacker"

    assert_text "Backpacker was successfully updated"
    click_on "Back"
  end

  test "destroying a Backpacker" do
    visit backpackers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Backpacker was successfully destroyed"
  end
end
