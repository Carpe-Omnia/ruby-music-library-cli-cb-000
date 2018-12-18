class MusicImporter
  attr_accessor :files, :path
  def files
    @files
  end
  def initialize(path)
    stuff = Dir.entries("#{path}")
    @path = path
    @files = stuff
  end

end
