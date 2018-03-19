class Artist

attr_accessor :songs, :name


@@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)

    @songs << song
    #up_all_night = Song.new("Up All Night")
    # song_obj = Song.new(song)
    song.artist = self
    @@song_count+=1

    #instance of song class
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
     @songs << new_song
     @@song_count+=1

  end

  def self.song_count

      @@song_count
  end

end
