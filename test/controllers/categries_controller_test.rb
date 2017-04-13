require 'test_helper'

class CategriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categry = categries(:one)
  end

  test "should get index" do
    get categries_url
    assert_response :success
  end

  test "should get new" do
    get new_categry_url
    assert_response :success
  end

  test "should create categry" do
    assert_difference('Categry.count') do
      post categries_url, params: { categry: { description: @categry.description, name: @categry.name } }
    end

    assert_redirected_to categry_url(Categry.last)
  end

  test "should show categry" do
    get categry_url(@categry)
    assert_response :success
  end

  test "should get edit" do
    get edit_categry_url(@categry)
    assert_response :success
  end

  test "should update categry" do
    patch categry_url(@categry), params: { categry: { description: @categry.description, name: @categry.name } }
    assert_redirected_to categry_url(@categry)
  end

  test "should destroy categry" do
    assert_difference('Categry.count', -1) do
      delete categry_url(@categry)
    end

    assert_redirected_to categries_url
  end
end
