class Author

  @@all = []
  @@post_count = 0

attr_accessor(:name, :posts)

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    @@post_count = @@all.collect { |author| author.posts.length }.inject(0, :+)
    @@post_count
  end


end
