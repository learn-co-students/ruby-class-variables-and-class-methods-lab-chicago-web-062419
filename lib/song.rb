require 'pry'
class Song
    attr_accessor :name, :artist, :genre


    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        return @@genres.uniq
    end
        
    def self.artists
        return @@artists.uniq
    end

    def self.genre_count
        genrehash = {}
        @@genres.each do |genre|
            if genrehash[genre] != nil
                genrehash[genre] += 1
            else
                genrehash[genre] = 1
            end
        end
        genrehash
    end

    def self.artist_count
        artisthash = {}
        @@artists.each do |artist|
            if artisthash[artist] != nil
                artisthash[artist] += 1
            else
                artisthash[artist] = 1
            end
        end
        artisthash
    end

end