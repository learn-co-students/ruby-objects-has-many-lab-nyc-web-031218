require 'pry'
class Song
  attr_reader :name
  attr_accessor :artist

  def initialize(name)

    @name = name

  end

  def artist_name

    self.artist ? self.artist.name : nil

  end


end

hot = Song.new("Hot Line Bling")

# binding.pry

puts "x"
