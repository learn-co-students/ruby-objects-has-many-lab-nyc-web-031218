class Post
  attr_accessor :author
  attr_reader :title

  def initialize(title = "none_given")
    @title = title
  end

  def author_name
    if author
      author.name
    end
  end

end
