require 'pry'
require_relative 'shelter'
require_relative 'client'
require_relative 'animal'




## Test

the_shelter = Shelter.new

client1 = Client.new
client2 = Client.new
client3 = Client.new

the_shelter.clients << client1
the_shelter.clients << client2
the_shelter.clients << client3

dog1 = Animal.new
dog2 = Animal.new
dog3 = Animal.new

the_shelter.animals << dog1
the_shelter.animals << dog2
the_shelter.animals << dog3




binding.pry