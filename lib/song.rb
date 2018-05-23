require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@library = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    if @@library[artist] == nil
      @@library = Hash.new {|h, k| h[k] = ''}
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
    binding.pry
  end

end
