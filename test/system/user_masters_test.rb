require "application_system_test_case"

class UserMastersTest < ApplicationSystemTestCase
  setup do
    @user_master = user_masters(:one)
  end

  test "visiting the index" do
    visit user_masters_url
    assert_selector "h1", text: "User masters"
  end

  test "should create user master" do
    visit user_masters_url
    click_on "New user master"

    fill_in "Email", with: @user_master.email
    fill_in "User", with: @user_master.user_id
    fill_in "User name", with: @user_master.user_name
    click_on "Create User master"

    assert_text "User master was successfully created"
    click_on "Back"
  end

  test "should update User master" do
    visit user_master_url(@user_master)
    click_on "Edit this user master", match: :first

    fill_in "Email", with: @user_master.email
    fill_in "User", with: @user_master.user_id
    fill_in "User name", with: @user_master.user_name
    click_on "Update User master"

    assert_text "User master was successfully updated"
    click_on "Back"
  end

  test "should destroy User master" do
    visit user_master_url(@user_master)
    click_on "Destroy this user master", match: :first

    assert_text "User master was successfully destroyed"
  end
end
