class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_reader :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres[@@count] = @genre
    @@artists[@@count] = @artist
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres = @@genres.uniq
  end
  
  def self.artists
    @@artists = @@artists.uniq
  end
  
 def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each do |genre|
      genre_count[genre] += 1
   end
   genre_count
  end
  
  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each do |x|
      artist_count[x] += 1
   end
   artist_count
  end
end
