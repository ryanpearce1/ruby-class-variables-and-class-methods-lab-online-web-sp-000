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
   @@artist.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      @@genre_count[genre] = @@genres.count(genre)
    end
    @@genre_count
  end
  
  def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist] = @@artists.count(artist)
    end
    @@artist_count
  end
  
  
end

  