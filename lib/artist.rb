require_relative './song.rb'

class Artist

    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        t = Song.new(song_name)
        t.artist = self
    end

    def self.song_count
        Song.all.filter { |song| song.artist != nil }.count
    end

end


