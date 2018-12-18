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
  def initialize(path="./db/mp3s/")
    @path = path
    importer = MusicImporter.new(path)
  end

  def call

  end

end
