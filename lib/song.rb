require "pry"

class Song

    attr_reader :genre, :name, :artist

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name
        @genre = genre
        @artist = artist
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
        # binding.pry
    end

    def self.genre_count
        genre_hash = Hash.new(0) #initiating new hash with a default key of '0' rather than nil
        @@genres.each {|genre| genre_hash[genre] += 1}
        return genre_hash
    end

    def self.artist_count
        artist_hash = Hash.new(0)
        @@artists.each {|artist| artist_hash[artist] += 1}
        return artist_hash
    end
end 

# yeezy = Song.new("touch the sky", "kanye", "hip-hop")
# Lil_wayne = Song.new("a milli", "lil-wayne", "hip-hop")
# taytay = Song.new("Shake it off", "Taylor Swift", "Pop")
# Mumford = Song.new("Lion man", "Mumford and Sons", "Folk")

# p Song.genres
