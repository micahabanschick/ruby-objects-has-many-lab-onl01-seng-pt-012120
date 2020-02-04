require 'pry'

class Artist 
  attr_accessor :name, :songs
  
  @@song_count = 0
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    song.artist = self
    @songs << song
    @@song_count +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@song_count +=1
    #binding.pry
  end

  def songs 
    arr = [] #@songs
    Songs.all.each do |song|
      
    end
    #binding.pry
  end 
  
  def self.song_count 
    Song.all.length #@@song_count 
  end 
  #binding.pry
end 
#binding.pry