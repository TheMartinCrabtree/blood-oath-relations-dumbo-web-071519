

class Cult
    @@all = []
    attr_accessor :population
    attr_reader :name, :location, :founding_year, :slogan

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        
        @@all << self
    end

    def self.all
        @@all
    end

    def cult_population
        Bloodoath.all.select do |oaths|
            oaths.cult == self
        end.length
    end



    def recruit_follower(follower, date)
        Bloodoath.new(self, follower, date)
        #follower.cults << self
        

    end

    def self.find_by_name(cultist_name)
        cultist = Bloodoath.all.find do |oath|
            oath.follower.name == cultist_name
        end

        return cultist.cult.name


    end
    
    def self.find_by_location(cult_location)
        self.all.select do |cult|
            cult.location == cult_location
        end
    end

    def self.find_by_founding_year(year)

    end











end
