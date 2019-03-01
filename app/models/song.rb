class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genres.name
  end

  def drake_made_this
    self.artists.name = "Drake"
  end
end