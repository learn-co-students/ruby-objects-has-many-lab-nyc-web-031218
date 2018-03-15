class Song

  attr_accessor :name, :artist

  ALL = []

  def self.all
    ALL
  end

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    ALL << self
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
#
# stronger = Song.new("Stronger")
# stronger.artist = kanye
