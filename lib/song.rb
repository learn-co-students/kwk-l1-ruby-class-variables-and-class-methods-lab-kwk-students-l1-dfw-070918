class Song

@@genres =[]
@@artists = []
attr_accessor :name,:artist,:genre 
@@genre_count = Hash.new(0)
@@artist_count = Hash.new(0)
@@count = 0

def initialize(name,artist,genre)
  @@count +=1
  @@genres << genre
  @@artists << artist
  @name = name 
  @artist = artist 
  @genre = genre 
end 

def self.count
  @@count
end 
def self.genres
  return @@genres.uniq
end 
def self.artists 
 return @@artists.uniq
end 
def self.genre_count 
  @@genre_count = Hash.new(0)
  @@genres.each{|key| @@genre_count[key] +=1}
  @@genre_count 
end
def self.artist_count
@@artist_count = Hash.new(0)
  @@artists.each{|key| @@artist_count[key] +=1}
  @@artist_count 
end   
end 