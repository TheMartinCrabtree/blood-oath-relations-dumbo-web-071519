require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#name, location, founding year, motto
cult1 = Cult.new("People Cult", "Brooklyn", 1979, "free range or die")
cult2 = Cult.new("Cat Cult", "Queens", 1979, "At least we're not the Bronx")

#name, age, life_motto
follower1 = Follower.new("Camille", 32, "shrimp are yummy")
follower2 = Follower.new("Martin", 4, "shrimp make me cry")
follower5 = Follower.new("Daphne", 45, "you wot mate?")

follower3 = Follower.new("Silly", 7, "I'm a cat")
follower4 = Follower.new("Oni", 6, "I'm a cat dog")


cult1.recruit_follower(follower1, "07212029")
cult1.recruit_follower(follower2, "07102029")
cult2.recruit_follower(follower3, "07192029")
cult2.recruit_follower(follower4, "07202029")
cult1.recruit_follower(follower5, "07212029")

follower1.join_cult(cult2)

###### testing
cult1.cult_population
cult2.cult_population

Cult.find_by_name("Daphne")


binding.pry





puts "Mwahahaha!" # just in case pry is buggy and exits
