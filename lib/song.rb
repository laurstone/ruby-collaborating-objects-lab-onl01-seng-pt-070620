require "pry"

class Song
  attr_accessor :name, :artist, :songs

  @@all = []
  

  def initialize(name)
    @name = name
    @songs = []
    @@all << self 

  end

  def self.new_by_filename(filename)
    @@all = filename.split(" - ")
     binding.pry 
    new_songs = self.new(songs)
    new_songs.artist_name = artist
  end
  
  
  
  def self.find_by_artist(artist)
    Song.all.select do |song|
      song.artist == artist
    end
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end


end