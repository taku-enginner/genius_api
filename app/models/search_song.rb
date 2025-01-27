class SearchSong < ApplicationRecord
  validates :title, presence: true
  validates :artist_name, presence: true
  validates :url, presence: true
end
