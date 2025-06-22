require "test_helper"

class UserMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_master = user_masters(:one)
  end

  test "should get index" do
    get user_masters_url
    assert_response :success
  end

  test "should get new" do
    get new_user_master_url
    assert_response :success
  end

  test "should create user_master" do
    assert_difference("UserMaster.count") do
      post user_masters_url, params: { user_master: { email: @user_master.email, user_id: @user_master.user_id, user_name: @user_master.user_name } }
    end

    assert_redirected_to user_master_url(UserMaster.last)
  end

  test "should show user_master" do
    get user_master_url(@user_master)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_master_url(@user_master)
    assert_response :success
  end

  test "should update user_master" do
    patch user_master_url(@user_master), params: { user_master: { email: @user_master.email, user_id: @user_master.user_id, user_name: @user_master.user_name } }
    assert_redirected_to user_master_url(@user_master)
  end

  test "should destroy user_master" do
    assert_difference("UserMaster.count", -1) do
      delete user_master_url(@user_master)
    end

    assert_redirected_to user_masters_url
  end
end
