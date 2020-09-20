class Genre
    
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all {|x| x.artist == self}
    end

    def artists
        songs.map(&:artist)
    end

end