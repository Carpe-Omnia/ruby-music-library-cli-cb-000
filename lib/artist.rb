class Artist
  attr_accessor :name , :songs
  @@all = []
  def self.all
    @@all
  end
  def self.destroy_all
    @@all = []
  end
  def initialize(name)
    @name = name
    @songs = []
  end
  def save
    @@all << self
  end
  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end
  def add_song(track)
    @songs << track
  end
  def genres
    @songs.collect do |song|
      song.genre
    end
  end

end
