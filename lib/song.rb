

class Song
  attr_accessor :artist, :name, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def artist_name
    if self.artist
       self.artist.name
    else
      nil
    end
  end

  def songs
    @songs
  end

end
