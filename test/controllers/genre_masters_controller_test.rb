require "test_helper"

class GenreMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genre_master = genre_masters(:one)
  end

  test "should get index" do
    get genre_masters_url
    assert_response :success
  end

  test "should get new" do
    get new_genre_master_url
    assert_response :success
  end

  test "should create genre_master" do
    assert_difference("GenreMaster.count") do
      post genre_masters_url, params: { genre_master: { genre_id: @genre_master.genre_id, genre_name: @genre_master.genre_name } }
    end

    assert_redirected_to genre_master_url(GenreMaster.last)
  end

  test "should show genre_master" do
    get genre_master_url(@genre_master)
    assert_response :success
  end

  test "should get edit" do
    get edit_genre_master_url(@genre_master)
    assert_response :success
  end

  test "should update genre_master" do
    patch genre_master_url(@genre_master), params: { genre_master: { genre_id: @genre_master.genre_id, genre_name: @genre_master.genre_name } }
    assert_redirected_to genre_master_url(@genre_master)
  end

  test "should destroy genre_master" do
    assert_difference("GenreMaster.count", -1) do
      delete genre_master_url(@genre_master)
    end

    assert_redirected_to genre_masters_url
  end
end
