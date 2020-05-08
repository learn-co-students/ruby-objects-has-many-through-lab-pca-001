class Genre
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def artists
    Artist.all.select { |artist| artist.genres.include? self }
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end
end
