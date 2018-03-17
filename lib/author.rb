require 'pry'

class Author

  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count+=1
  end

  def add_post_by_title(title_name)
    title = Post.new(title_name)
    posts << title
    title.author = self
    @@post_count+=1
  end

  def Author.post_count
    @@post_count
  end

end
