class CreateSearchSongs < ActiveRecord::Migration[7.2]
  def change
    create_table :search_songs do |t|
      t.string :title
      t.string :artist_name

      t.timestamps
    end
  end
end
