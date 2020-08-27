require_relative './post.rb'

class Author

    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_name)
        t = Post.new(post_name)
        t.author = self
    end

    def self.post_count
        Post.all.filter { |post| post.author != nil }.count
    end

end