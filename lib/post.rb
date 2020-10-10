require 'pry'

class Post

    attr_accessor :title, :author

    @@all = []

    def self.all
        @@all
    end

    def initialize(title)
        @title = title
        save
    end

    def save
        @@all << self
    end

    def author_name
        self.author ? self.author.name : nil
    end

end