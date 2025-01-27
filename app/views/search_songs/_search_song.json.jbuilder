json.extract! search_song, :id, :title, :created_at, :updated_at
json.url search_song_url(search_song, format: :json)
