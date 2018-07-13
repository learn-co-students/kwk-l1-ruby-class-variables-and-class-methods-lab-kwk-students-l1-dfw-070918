class Song 
  @@count=0 
  @@artists=[]
  @@genres=[]
  @@genre_count=Hash.new(0)
  @@artist_count=Hash.new(0)
  
  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1 
    @@genres << genre
    @@artists << artist
  end
  
  attr_accessor :name, :artist, :genre
  
  def self.count
    return @@count
  end
  
  def self.genres
    return @@genres.uniq
  end
  
  def self.artists
    return @@artists.uniq
  end
  
  def self.genre_count
    @@genre_count=Hash.new(0)
    @@genres.each{|key| @@genre_count[key] += 1}
    return @@genre_count
  end
  
  def self.artist_count
    @@artist_count=Hash.new(0)
    @@artists.each{|key| @@artist_count[key] += 1}
    return @@artist_count
  end
    
end 