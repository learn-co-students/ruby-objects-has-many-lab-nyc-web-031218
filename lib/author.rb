class Author
  attr_accessor :name
  attr_reader :posts
  ALL = []

  def initialize(name = "none")
    @name = name
    @posts = []
    ALL << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    @@post_count = 0
    ALL.each{|author| @@post_count += author.posts.length}
    @@post_count
  end


end
