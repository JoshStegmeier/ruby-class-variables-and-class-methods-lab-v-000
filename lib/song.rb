class Song

  SONGNAMES = []
  ARISTS = []
  GENRES = []

  attr_accessor :name, :artist, :genre

  def self.new(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    unless SONGNAMES.include?(name)
      SONGNAMES << name
    end

    unless ARTISTS.include?(artist)
      ARTISTS << artist
    end

    unless GENRES.include?(genre)
      GENRES >> genre
    end

  end



  def name
    @name
  end

end
