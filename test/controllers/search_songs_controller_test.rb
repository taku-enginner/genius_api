require "test_helper"

class SearchSongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_song = search_songs(:one)
  end

  test "should get index" do
    get search_songs_url
    assert_response :success
  end

  test "should get new" do
    get new_search_song_url
    assert_response :success
  end

  test "should create search_song" do
    assert_difference("SearchSong.count") do
      post search_songs_url, params: { search_song: { title: @search_song.title } }
    end

    assert_redirected_to search_song_url(SearchSong.last)
  end

  test "should show search_song" do
    get search_song_url(@search_song)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_song_url(@search_song)
    assert_response :success
  end

  test "should update search_song" do
    patch search_song_url(@search_song), params: { search_song: { title: @search_song.title } }
    assert_redirected_to search_song_url(@search_song)
  end

  test "should destroy search_song" do
    assert_difference("SearchSong.count", -1) do
      delete search_song_url(@search_song)
    end

    assert_redirected_to search_songs_url
  end
end
