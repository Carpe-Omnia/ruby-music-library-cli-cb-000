class Song
  attr_accessor :name,
  @@all = []
  def all
    @@all
  end
  def initialize(name)
    @name = name
  end
  def save
    @@all << self
  end
  def self.destroy_all
    @@all = []
  end
  def self.create(name)
    track = self.new(name)
    track.save
  end
