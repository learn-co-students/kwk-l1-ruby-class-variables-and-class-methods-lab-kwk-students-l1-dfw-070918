
class Song  #make class

@@count=0  #sets count of total number to songs to 0
@@artists = []  #puts all of the artist in an array
@@genres = [] #puts all of the genres in an array
 def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1  #increases count by one every time new song is added
  @@artists << artist  #puts all of the artists in array
  @@genres << genre #puts all of the genres in an array
end
  
attr_accessor :name, :artist, :genre #setter and getters

def self.artists
  @@artists.uniq  #returns array with unique artist
end

def self.genres
  @@genres.uniq #returns array with unique genres
end
  
  def self.count
    @@count
  end
 
def self.genre_count  #method to count occurrences of genres
  genre_count = Hash.new(0)  #make new hash where key = genre and value = # of occurrences
  @@genres.each do |genre|  #label each elements as genre
    genre_count[genre] += 1  #every time new genre, add 1
  end
  return genre_count
end

def self.artist_count
  artist_count = Hash.new(0)
  @@artists.each do |artist|
    artist_count[artist] += 1
  end
  return artist_count
end

end

hit_me = Song.new("Hit Me Baby One More Time", "Brittany Spears", "pop")

lucifer = Song.new("Lucifer", "Jay-Z", "rap" )

niney_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")