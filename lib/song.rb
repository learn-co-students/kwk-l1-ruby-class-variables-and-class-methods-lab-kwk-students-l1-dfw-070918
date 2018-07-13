class Song
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1 
    @@genres << genre       #tbd
    @@artists << artist 
  end
  
  def self.count
    @@count 
  end
  
  def self.genres
    @@genres = @@genres.uniq
    #no repeats
  end 
  
  def self.artists
    @@artists = @@artists.uniq 
    #no repeats 
  end 
  
  def self.genre_count
    counts = {}
    @@genres.each do |genre|
    if counts[genre] 
      counts[genre] += 1 
    else 
      counts[genre] = 1 
    end 
  end
   counts
  end
  
  def self.artist_count
    counts1 = {}
    @@artists.each do |artist|
    if counts1[artist] 
      counts1[artist] += 1 
    else 
      counts1[artist] = 1
      
    end
  end 
  counts1
  end 
  
  attr_accessor :name, :artist, :genre
  
end



