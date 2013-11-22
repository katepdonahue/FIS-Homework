require './pokemon_scraper'
require './pokemon_class'


my_scraper = Scraper.new "http://bulbapedia.bulbagarden.net/wiki/Litwick"


my_name = my_scraper.get_litwick_name

pokemon1 = Pokemon.new(my_name)

puts pokemon1.say_name

