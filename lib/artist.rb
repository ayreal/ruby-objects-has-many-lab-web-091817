require 'pry'

class Artist
  @@song_count = 0
  attr_accessor :name #, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self   #what is the artist= method here? How did we get it?
    @@song_count += 1
  end

  def add_song_by_name(name)
    # eg adele.songs.last.name = "halo"
    # improves upon above method
    song = Song.new(name)  # this is a variable not a setter
    @songs << song
    song.artist = self  #this is a setter
    @@song_count += 1
  end



#SELF.methodname makes it a CLASS METHOD operating on entire class
# is this a reader??
  def self.song_count #the ttl # of songs assoc w all existing artists
    @@song_count
  end

  def songs
    @songs
  end
end
