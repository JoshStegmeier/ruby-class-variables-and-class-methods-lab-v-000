class Song

  SONGNAMES = []
  ARISTS = []
  GENRES = []

  attr_accessor :name, :artist, :genre

  def self.new(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre


  end



  def name
    @name
  end

end
