require "pry"
class Song

  attr_accessor :name, :artist

  def initialize(name)
  @name = name

  end

  def artist_name
    #song = Artist.new("Drake");
    # song = Song.new(name)
    #what is self here?
    if self.artist != nil
    song = artist.name
  end
  end


end
