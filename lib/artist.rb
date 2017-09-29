require 'pry'

class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song) # a song object passed in
    song.artist = self
    songs << song
    @@song_count += 1
  end

  def add_song_by_name(name) # a string is passed in
    song = Song.new(name)
    self.add_song(song)
  end

  def self.song_count
    @@song_count
  end
end

#adele.song_count = 2
