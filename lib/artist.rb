require 'pry'
class Artist

  attr_accessor :name
  # attr_writer
  # attr_reader
  # @@artist = []
  @@song_count=0
  def initialize(name)
    @name = name
    @songs = []

  end


  def songs
    @songs
  end

  def add_song(song)

    @songs << song
    @@song_count+=1
    song.artist = self

  end

  def add_song_by_name(name)
    # total_songs = @songs.length
    @@song_count+=1
    @song_count =
    song = Song.new(name)
    @songs << song
    song.artist = self

  end

  def self.song_count
    @@song_count
  end
  # def self.artist
  #   @@artist
  #
  # end

end

# single = Song.new
# Start.pry
# binding.pry
# p 'pppp'

#
