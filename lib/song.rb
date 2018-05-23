require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genreHash = {}

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

    if @@genreHash.has_key?(genre)
      @@genreHash[genre] += 1
    else
      @@genreHash[genre] = 0 + 1
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
    @@genreHash
  end

end
