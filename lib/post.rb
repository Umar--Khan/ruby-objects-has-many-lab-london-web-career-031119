class Post

    attr_accessor :author
    attr_reader :title

    @@all = []
    

    def initialize (title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author
        @author
    end

    def author_name
        if author == nil
            nil 
        else
            self.author.name
        end
    end

end