require 'pry'
class Song 

  attr_reader :name
  attr_accessor :artist

  def initialize(name)
    @name = name
    @posts = []
  end

  def artist_name
    # binding.pry
    if artist
      self.artist.name
    else
      nil
    end
  end

end

song = Song.new("songname")

song.artist_name
