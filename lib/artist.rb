require 'pry'
class Artist
  attr_accessor :songs, :name
  @@song_count = 0

  def initialize(name)
    @name= name
    @songs= []
  end

  def add_song(song)
    song.artist = self
    self.songs << song
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end

  def self.song_count
    return @@song_count
  end
end
