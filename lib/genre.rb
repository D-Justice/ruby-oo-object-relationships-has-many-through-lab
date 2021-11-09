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
        Song.all.select {|each| each.genre == self}
    end
    def artists
        songs.collect {|each| each.artist}
    end

end
