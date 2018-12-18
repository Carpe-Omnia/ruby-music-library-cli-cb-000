class MusicImporter
  attr_accessor :files
  def files
    @files
  end
  def initialize(path)
    stuff = Dir.entries("#{path}")
  end

   
