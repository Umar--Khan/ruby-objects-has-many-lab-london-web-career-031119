class Author

    attr_accessor :posts
    attr_reader :name

    def initialize (name)
        @name = name
        @posts = []
    end

    def posts
        @posts
    end
    
    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title (name)
        post = Post.new (name)
        @posts << post
        post.author = self
    end

    def self.post_count
        Post.all.length
    end

end