class Song
  extends Concerns::findable
  attr_accessor :name , :artist, :genre
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
  def initialize(name, artist=nil, genre=nil)
    @name = name
    if artist != nil
      @artist = artist
    end
    if genre != nil
      @genre = genre
    end
  end
  def self.create(name)
    song = self.new(name)
    song.save
    song
  end
  #def self.find_by_name(name)
  #  @@all.detect {|song| song.name == name }
#  end
#  def self.find_or_create_by_name(name)
#    if self.find_by_name(name) == nil
      #self.create(name)
  #  else
      #self.find_by_name(name)
    #end
  #end
end
