require 'pry'
class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end 

    def add_song(new_song)
        Song(new_song)
    end 

    def songs
        Song.all.select{|songs| songs.artist == self}
    end 

    def add_song(song_name)
        song_name.artist = self
    end 

    def add_song_by_name(song_name)
        Song.new(song_name, self)
    end 

    def self.song_count
        Song.all.count
    end 

end 
