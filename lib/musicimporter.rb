class MusicImporter
  attr_accessor :files, :path
  def files
    @files
  end
  def initialize(path)
    stuff = Dir.entries("#{path}")
    stuff.delete(".")
    stuff.delete("..")
    @path = path
    @files = stuff
  end
  def import
    @files.each do |file|
      Song.create_from_filename(file)
    end
  end
end

class MusicLibraryController
  attr_accessor :path
  def initialize(path="./db/mp3s")
    @path = path
    importer = MusicImporter.new(path)
    importer.import
  end

  def call
    puts"Welcome to your music library!"
    puts"To list all of your songs, enter 'list songs'."
    puts"To list all of the artists in your library, enter 'list artists'."
    puts"To list all of the genres in your library, enter 'list genres'."
    puts"To list all of the songs by a particular artist, enter 'list artist'."
    puts"To list all of the songs of a particular genre, enter 'list genre'."
    puts"To play a song, enter 'play song'."
    puts"To quit, type 'exit'."
    puts"What would you like to do?"
    input = "."
    while input != 'exit'
      input = gets.chomp
      self.execute_input(input)
    end
  end
  def execute_input(input)
    if input == 'list songs'
      self.list_songs
    elsif input == 'list artists'
      self.list_artists
    elsif input == 'list genres'
      self.list_genres
    elsif input == 'list artist'
      self.list_songs_by_artist
    elsif input == 'list genre'
      self.list_songs_by_genre
    elsif input == 'play song'
      self.play_song
    else
      self.do_nothing
    end
  end

  def list_songs
    num = 1
    ray = Song.all.sort_by{|m| m.name }
    ray.each do |track|
      puts "#{num}. #{track.artist.name} - #{track.name} - #{track.genre.name}"
      num += 1
    end
  end
  end
  def list_artists
  end
  def list_genres
  end
  def list_songs_by_artist
  end
  def list_songs_by_genre
  end
  def play_song
  end
  def do_nothing
  end

end
