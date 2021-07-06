class Genre

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def artists
    self.songs.collect {|song| song.artist}
  end
end
