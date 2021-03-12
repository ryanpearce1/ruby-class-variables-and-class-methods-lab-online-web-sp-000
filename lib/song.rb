class Song 
  

  
attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@genres = []
  @@artists = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artist << artist
  end
  
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq 
  end

  def self.artist
   @@artist.uniq!
  end

  def self.genre_count
    @@genres.each_with_object
  end
  
end

  