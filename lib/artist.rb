class Artist
    @@all = []
    attr_accessor :name
    def initialize(name = "unknown artist")
        @name = name
        @@all << self
    end
    def songs
        Song.all.select { |a| a.artist == self}
    end
    def self.all
        @@all
    end
    def new_song(name,genre)
        Song.new(name,self,genre)
    end
    def genres
        self.songs.map { |v| v.genre}
    end
end
