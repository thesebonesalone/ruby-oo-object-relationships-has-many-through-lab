

class Song
    @@all = []
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @artist = artist
        @name = name
        @genre = genre
        @@all << self
    end
    def self.all
        @@all
    end
    
end
