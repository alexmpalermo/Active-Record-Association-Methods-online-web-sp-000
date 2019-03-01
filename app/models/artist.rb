class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

 def get_first_song
    self.songs.first
  end

  def get_genre_of_first_song
    song = get_first_song
    song.genre
  end

  def song_count
    self.songs.all.
  end

  def genre_count
    #return the number of genres associated with the artist
  end
end
