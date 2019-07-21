

class Follower

    @@all = []

    attr_accessor :name, :age, :life_motto, :cults

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @cults = []
        @@all << self
    end

    def self.all
        @@all
    end

    def join_cult(cult)
        Bloodoath.new(cult, self, "07202019")
    end

    def self.of_a_certain_age(age_var)

    end





end
