require 'Pry'

class Owner

attr_accessor :pets, :name
attr_reader :species

@@all = []

def initialize(species)
	@pets = {fishes: [], cats: [], dogs: []}
	@name = name
	@species = species
	@@all << self
end

#class
def self.all
	@@all
end

def self.count
	@@all.length
end

def self.reset_all
	@@all.clear
end


#instance
def say_species
	"I am a #{@species}."
end

def name
		@name
end

def buy_fish(name)
	self.pets[:fishes]<< name = Fish.new(name)
end

def buy_dog(name)
	self.pets[:dogs] << name = Dog.new(name)
end

def buy_cat(name)
	self.pets[:cats] << name = Cat.new(name)
end

def walk_dogs
	arr = @@all.map { |o| o.pets[:dogs]}.flatten
	arr.each{|i| i.mood = 'happy'}
end

def feed_fish
	arr = @@all.map { |o| o.pets[:fishes]}.flatten
	arr.each{|i| i.mood = 'happy'}
end

def play_with_cats
	arr = @@all.map { |o| o.pets[:cats]}.flatten
	arr.each{|i| i.mood = 'happy'}
end

def sell_pets
	pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
end

def list_pets
"I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end


end #class end
#
# a = Owner.new('Human')
# b = Owner.new('Human')
# a.buy_dog("archer")
# b.buy_dog("max")
#

#Pry.start
