require "application_system_test_case"

class GenreMastersTest < ApplicationSystemTestCase
  setup do
    @genre_master = genre_masters(:one)
  end

  test "visiting the index" do
    visit genre_masters_url
    assert_selector "h1", text: "Genre masters"
  end

  test "should create genre master" do
    visit genre_masters_url
    click_on "New genre master"

    fill_in "Genre", with: @genre_master.genre_id
    fill_in "Genre name", with: @genre_master.genre_name
    click_on "Create Genre master"

    assert_text "Genre master was successfully created"
    click_on "Back"
  end

  test "should update Genre master" do
    visit genre_master_url(@genre_master)
    click_on "Edit this genre master", match: :first

    fill_in "Genre", with: @genre_master.genre_id
    fill_in "Genre name", with: @genre_master.genre_name
    click_on "Update Genre master"

    assert_text "Genre master was successfully updated"
    click_on "Back"
  end

  test "should destroy Genre master" do
    visit genre_master_url(@genre_master)
    click_on "Destroy this genre master", match: :first

    assert_text "Genre master was successfully destroyed"
  end
end
