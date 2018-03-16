class Song

  attr_accessor :name, :artist

  # @@songs = []
  def initialize(name)
    @name = name

  end

  def artist_name
    # binding.pry
    @artist ? @artist.name : nil
    # binding.pry
    # Song.new = @songs
  end

  # def self.songsß
  #   @@songs
  # end

end
# expected: #<Artist:0x007ff658adc4a0 @name="Adele",
# @songs=["Hello", #<Song:0x007ff658adc1a8 @name="Hello">]>
