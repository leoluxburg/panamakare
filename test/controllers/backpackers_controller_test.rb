require 'test_helper'

class BackpackersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backpacker = backpackers(:one)
  end

  test "should get index" do
    get backpackers_url
    assert_response :success
  end

  test "should get new" do
    get new_backpacker_url
    assert_response :success
  end

  test "should create backpacker" do
    assert_difference('Backpacker.count') do
      post backpackers_url, params: { backpacker: { age: @backpacker.age, email: @backpacker.email, lastname: @backpacker.lastname, name: @backpacker.name, nationality: @backpacker.nationality, phone: @backpacker.phone, profession: @backpacker.profession, trip_id: @backpacker.trip_id } }
    end

    assert_redirected_to backpacker_url(Backpacker.last)
  end

  test "should show backpacker" do
    get backpacker_url(@backpacker)
    assert_response :success
  end

  test "should get edit" do
    get edit_backpacker_url(@backpacker)
    assert_response :success
  end

  test "should update backpacker" do
    patch backpacker_url(@backpacker), params: { backpacker: { age: @backpacker.age, email: @backpacker.email, lastname: @backpacker.lastname, name: @backpacker.name, nationality: @backpacker.nationality, phone: @backpacker.phone, profession: @backpacker.profession, trip_id: @backpacker.trip_id } }
    assert_redirected_to backpacker_url(@backpacker)
  end

  test "should destroy backpacker" do
    assert_difference('Backpacker.count', -1) do
      delete backpacker_url(@backpacker)
    end

    assert_redirected_to backpackers_url
  end
end
