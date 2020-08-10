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
    song_pieces = filename.split(" - ")
     binding.pry 
    new_song = self.new(song_pieces[])
    new_song.artist_name = artist
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