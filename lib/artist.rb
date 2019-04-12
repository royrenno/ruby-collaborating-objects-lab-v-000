class Artist
  @@all =[]
  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @song = []
  end

  def self.all
    @@all
  end
  def add_song(song)
    @songs <<song
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist.name == name}
  end

  end
