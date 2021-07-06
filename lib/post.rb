class Post

    attr_accessor :title, :author

    @@all = []

    def initialize(title, author = nil)
        @title = title
        @author = author
        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def author_name
        if self.author == nil
            nil
        else
            self.author.name
        end 
    end 

end 
