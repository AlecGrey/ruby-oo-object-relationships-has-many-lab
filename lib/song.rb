require 'pry'

class Song

    attr_accessor :name, :artist

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end
end

# hello = Song.new("Hello")
# spf = Song.new("SPF")

# binding.pry