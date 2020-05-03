require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize(name, artist, genre)       
        @name = name 
        @artist = artist 
        @genre = genre                 
        @@all << self
    end

    # Genre: a single genre can be shared by many songs so can NOT create new genre for each song (but assign a genre to each song)

    def self.all
        @@all
    end




end