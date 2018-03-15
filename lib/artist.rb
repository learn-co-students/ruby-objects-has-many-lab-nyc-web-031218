class Artist

  attr_accessor(:name, :songs)

  @@all = []
  @@song_count

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
  end

  def self.song_count
    @@song_count = @@all.collect { |artist| artist.songs.length }.inject(0, :+)
    @@song_count
  end

end
