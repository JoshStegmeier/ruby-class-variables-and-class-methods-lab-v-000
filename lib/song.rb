class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    unless @@artists.include?(artist)
      @@artists << artist
    end

    unless @@genres.include?(genre)
      @@genres << genre
    end
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def genres
    @@genres
  end

end
