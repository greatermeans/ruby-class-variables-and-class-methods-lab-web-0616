require 'pry'

class Song
  attr_accessor :name, :genre, :artist


  @@genres = []
  @@artists = []
  @@count = 0

  def initialize(name,artist,genre)
    @name = name
    @genre = genre
    @artist = artist
    @@artists << artist
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre, genre_count|    
      genre_count[genre] ||= 0
      genre_count[genre] += 1
    end
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist,artist_count|
      artist_count[artist] ||= 0
      artist_count[artist] +=1
    end
  end
end