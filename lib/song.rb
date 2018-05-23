require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@library = {}
  @@genreCounter = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    if @@library[artist] == nil
      @@library[artist] = Hash.new
    end

    if @@library[artist][genre] == nil
      @@library[artist][genre] = []
    end

    unless @@library[artist][genre].include?(name)
      @@library[artist][genre] << name
    end

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

  def self.genres
    @@genres
  end

  def self.genre_count
    @@library.each do |artist, genre|
      genre.each do |genre, song|
        @@genreCounter[genre] = Hash.new
        @@genreCounter[genre] =+ song.size
      end
    end
    #   unless @@genreCounter[genre]
    #     @@genreCounter[genre] = 0
    #   end
    #
    #     @@genreCounter[genre] += 1
    #   end
    # end
    # @@genreCounter
  end

end
