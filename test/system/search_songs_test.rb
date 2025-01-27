require "application_system_test_case"

class SearchSongsTest < ApplicationSystemTestCase
  setup do
    @search_song = search_songs(:one)
  end

  test "visiting the index" do
    visit search_songs_url
    assert_selector "h1", text: "Search songs"
  end

  test "should create search song" do
    visit search_songs_url
    click_on "New search song"

    fill_in "Title", with: @search_song.title
    click_on "Create Search song"

    assert_text "Search song was successfully created"
    click_on "Back"
  end

  test "should update Search song" do
    visit search_song_url(@search_song)
    click_on "Edit this search song", match: :first

    fill_in "Title", with: @search_song.title
    click_on "Update Search song"

    assert_text "Search song was successfully updated"
    click_on "Back"
  end

  test "should destroy Search song" do
    visit search_song_url(@search_song)
    click_on "Destroy this search song", match: :first

    assert_text "Search song was successfully destroyed"
  end
end
