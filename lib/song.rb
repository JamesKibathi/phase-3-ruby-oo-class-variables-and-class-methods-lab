class Song
    @@count=0
    @@genres=[]
    @@artists=[]
    @@genre_name=""

    attr_accessor :name,:artist,:genre

    # attr_reader :@count

    def initialize (name,artist,genre)
        @name=name
        @artist=artist
        @@artists=@@artists<<artist
        @genre=genre
        @@count =@@count+1
        @@genres=@@genres<<genre
        @@genre_name=genre
    end

    def self.count
       @@count
    end

    def self.genres
        @@genres.uniq;
    end

    def self.artists
        @@artists.uniq;
    end

    def self.genre_count
        
     #@@genres.each{|g| puts g}
    #  @@genres.each do |g| 
            
    #     puts g
    #     puts @@genres.count(g)
        
    #  end

      @@genres.tally


    end

    def self.artist_count
        @@artists.tally
    end




end

song1=Song.new("My song","Lecrae", "Hip-Hop")
song2=Song.new("My secondsong","Ed Sheeran","Rock")
song3=Song.new("My thirdsong","Carlos","Reggae")
song4=Song.new("My fourthsong","Miley", "Rock")
song5=Song.new("My fifthsong","MJ", "Rhumba")
song6=Song.new("Wheels Up","Lecrae", "Hip-Hop")
song7=Song.new("Blessings","Lecrae", "Hip-Hop")
# p song1.count
p Song.count
p Song.genres

p Song.genre_count
p Song.artist_count