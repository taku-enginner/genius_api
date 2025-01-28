class AddArtistNameToSearchSongs < ActiveRecord::Migration[7.2]
  def change
    add_column :search_songs, :artist_name, :string
  end
end
