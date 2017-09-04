class Artist
  def initialize(name)
    @name = name
    @albums = []
  end

  attr_reader :albums

  def add_album(new_album)
    @albums << new_album
  end

  def discount(ratio)
    @albums.each do |album|
      album.discount(ratio)
    end
  end
end
