require "pry"

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        
        if @@genre_count[genre]
            @@genre_count[genre] += 1
        else
            @@genre_count[genre] = 1
        end

        if @@artist_count[artist]
            @@artist_count[artist] += 1
        else
            @@artist_count[artist] = 1
        end
    end

    def self.count
        @@count
    end

    # Add .uniq to the mental methods menu.
    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    # Got both the count methods wrong initially. Used solutions page for help but place code in initialize area.
    def self.genre_count
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end
end


p ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
p hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
p lucifer = Song.new("Lucifer", "Jay-Z", "rap")
p Song.genre_count
