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
        Song.all.find_all do |genre|
            genre.genre == self
        end
    end
    
    def artists
        genre_songs = songs()
        genre_songs.map {|s| s.artist}
    end
   
end