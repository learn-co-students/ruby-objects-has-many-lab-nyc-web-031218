class Artist
  attr_reader :name, :songs
  ALL = []

  def initialize(name)
    @name = name
    @songs = []
    ALL << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def self.song_count
    @@song_count = 0
    ALL.each{|artist| @@song_count += artist.songs.length}
    @@song_count
  end

end
