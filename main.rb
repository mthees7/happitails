require 'pry'
require_relative 'shelter'
require_relative 'client'
require_relative 'animal'



## Test

the_shelter = Shelter.new


client1 = Client.new


dog1 = Animal.new



dog1.name = "Benji"
dog1.age = "12 weeks old"
dog1.gender = "Male"
dog1.species = "Labrador Retriever"
dog1.toys << "Tennis Ball" << "Teddy Bear"


client1.name = "Joe Smith"
client1.num_children = "0"
client1.age = "25"
client1.num_pets = "2"


the_shelter.clients << client1


the_shelter.animals << dog1




puts "Please choose one of the following options:\n
(1) Display all animals\n
(2) Display all clients\n
(3) Create an client\n
(4) Create an animal\n
or Quit from this program by entering 'quit'\n"
# facilitate client adopts an animal
# facilitate client puts an animal up for adoption

menu_option = gets.chomp.downcase.to_s

while menu_option != 'quit'


  case menu_option

    when "1"
      the_shelter.animals.uniq.each do |animal|
        puts animal.name
      end

    when "2"
      the_shelter.clients.uniq.each do |client|
        puts client.name
      end

    when "3"
      puts "What is the new clients name?"
      clients_name = gets.chomp

      puts "How old is #{clients_name}?"
      clients_age = gets.chomp

      puts "How many children does #{clients_name} have?"
      clients_num_children = gets.chomp.to_s

      puts "How many animals does #{clients_name} have?"
      clients_num_animals = gets.chomp.to_s

      puts "Your new client #{clients_name}, is #{clients_age}, has #{clients_num_children } children
      and #{clients_num_animals} animals."

      new_client = Client.new

      new_client.name = "#{ clients_name }"
      new_client.age = "#{ clients_age }"
      new_client.num_children = "#{ clients_num_children }"
      new_client.num_pets = "#{ clients_num_animals }"

      the_shelter.clients << new_client


    when "4"

      puts "What is the new animals name?"
      animals_name = gets.chomp

      puts "What is the age of #{animals_name}?"
      animals_age = gets.chomp.to_s

      puts "Is #{animals_name} a Male or Female?"
      animals_gender = gets.chomp.downcase

      puts "What kind of species is #{animals_name}?"
      animals_species = gets.chomp.to_s

      puts "What toys does #{animals_name} have?"
      animals_toys = gets.chomp

      puts "You added a new animal: #{animals_name}, is a #{animals_species}, they are #{animals_age},
      and love to play with thier toys."

      new_animal = Animal.new

      new_animal.name = "#{ animals_name }"
      new_animal.age = "#{ animals_age }"
      new_animal.species = "#{ animals_species }"
      new_animal.gender = "#{ animals_gender }"
      new_animal.toys << "#{ animals_toys }"

      the_shelter.animals << new_animal

  end




#binding.pry





 puts "Please choose one of the following options:\n
(1) Display all animals\n
(2) Display all clients\n
(3) Create an client\n
(4) Create an animal\n
or Quit from this program by entering 'quit'\n"

  menu_option = gets.chomp.downcase.to_s

end


# new_client.name = "#{ clients_name }"
# new_client.age = "#{ clients_age }"
# new_client.num_children = "#{ clients_num_children }"
# new_client.num_pets = "#{ clients_num_animals }"


# new_animal.name = "#{ animals_name }"
# new_animal.age = "#{ animals_age }"
# new_animal.species = "#{ animals_species }"
# new_animal.gender = "#{ animals_gender }"
# new_animal.toys << "#{ animals_toys }"





