require "pry"

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    # Iterate over the genres array
    @@genres.each do |music|
      # binding.pry
      # If it has already encountered it, add to the count in the hash
      if genre_hash.has_key?(music)
        genre_hash[music] += 1
        # For every genre it encounters add it to the hash
      else
        genre_hash[music] = 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |musician|
      if artist_hash.has_key?(musician)
        artist_hash[musician] += 1
      else
        artist_hash[musician] = 1
      end
    end
    artist_hash
  end
end


# I did it!!