class Artist
  attr_accessor :name
  @@all = []
  def self.all
    @@all
  end
  def self.destroy_all
    @@all = []
  end
  def initialize(name)
    @name = name
  end
  def save
    @@all << self
  end   
