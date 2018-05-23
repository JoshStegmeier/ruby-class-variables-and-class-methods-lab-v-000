class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def self.new(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    unless @@artists.include?(artist)
      ARTISTS << artist
    end

    unless @@genres.include?(genre)
      GENRES << genre
    end
  end

  def name
    @name
  end

end
