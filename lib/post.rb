require_relative './author.rb'

class Post

    @@all = []
    
     def initialize(title)
         @title = title
         @author = nil
         @@all << self
         
     end
     
     def self.all
         @@all
     end
 
     def title
      @title
     end
 
     def author
        @author
     end

     def author=(name)
         @author = name
     end 
 
     def author_name
        if self.author != nil
         self.author.name
        else 
         nil
        end 
     end
 
 end