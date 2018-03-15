class Author
  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    self.posts << post
    @@post_count += 1
  end

  def add_post_by_title(name)
    post = Post.new(name)
    self.add_post(post)
  end

  def self.post_count
    return @@post_count
  end


end
