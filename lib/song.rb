class Song
  attr_accessor :name
  @@all = []
  def all
    @@all
  end
  def self.destroy_all
    @@all = []
  end
  def save
    @@all << self
  end
  def initialize(name)
    @name = name
  end

  def self.create(name)
    song = self.new(name)
    song.save
    song
  end
end
