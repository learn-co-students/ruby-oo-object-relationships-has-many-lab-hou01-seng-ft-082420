require 'pry'
class Post
    attr_reader :title
    attr_accessor :author
    
    @@all = []

    def initialize(title)
        @title = title
        self.class.all << self
    end
    def self.all
        @@all
    end

    def author_name
      if self.author != nil
         self.author.name 
      else
         nil
      end
      #binding.pry 
    end

end