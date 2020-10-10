require 'pry'

class Artist
    
    attr_accessor :name
   
    # ~~ CLASS METHODS ~~ #

    def self.song_count
        Song.all.count
    end

    # ~~ INSTANCE METHODS ~~ #

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        self.add_song(song)
    end

end