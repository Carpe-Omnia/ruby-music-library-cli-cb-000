class Genre

  attr_accessor :name
  @@all = []
  def self.all
    @@all
  end
  def self.destroy_all
    @@all = []
  end   
