class Song
  attr_accessor :name , :artist
  @@all = []
  def self.all
    @@all
  end
  def self.destroy_all
    @@all = []
  end
  def save
    @@all << self
  end
  def initialize(name, artist=nil)
    @name = name
    if artist != nil
      @artist = artist
    end
  end
  def self.create(name)
    song = self.new(name)
    song.save
    song
  end
end
