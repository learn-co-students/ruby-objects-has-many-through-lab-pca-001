class Artist
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  def songs
    Song.all.select{ |song| song.artist == self }
  end
  def new_song(title, genre)
    Song.new(title, self, genre)
  end
  def genres
    songs.collect{ |song| song.genre }
  end
  def self.all
    @@all
  end
end