require_relative './artist.rb'

class Song

    @@all = []
    
     def initialize(name)
         @name = name
         @artist = nil
         @@all << self
         
     end
     
     def self.all
         @@all
     end
 
     def name
      @name
     end
 
     def artist
        @artist
     end

     def artist=(name)
         @artist = name
     end 
 
     def artist_name
        if self.artist != nil
         self.artist.name
        else 
         nil
        end 
     end
 
 end