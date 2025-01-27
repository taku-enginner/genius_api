class AddUrlToSearchSongs < ActiveRecord::Migration[7.2]
  def change
    add_column :search_songs, :url, :string
  end
end
