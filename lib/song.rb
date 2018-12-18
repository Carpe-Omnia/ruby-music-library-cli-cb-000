class Song
  extend Concerns::Findable
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

  def self.create(name)
    song = self.new(name)
    song.save
    song
  end
  def genre=(arg)
    @genre = arg
    arg.songs << self
    arg.songs = arg.songs.uniq
  end
  def artist=(arg)
    @artist = arg
    arg.add_song(self)
  end
  def initialize(name, artist=nil, genre=nil)
    @name = name
    if artist != nil
      self.artist = artist
      #@artist = artist
    end
    if genre != nil
      #@genre = genre
      self.genre = genre
    end
  end
  def new_from_filename(filename)
    fileshort = filename[0..-5]
    ray = fileshort.split(" - ")
end
