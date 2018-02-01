require 'pry'

class Owner

  attr_accessor :name, :owner, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a human."
  end


  def buy_fish(name)
    fish = Fish.new(name)
    fish.owner = self
    @pets[:fishes] << fish
    @pets[:fishes]
  end

  def buy_cat(name)
    cat = Cat.new(name)
    cat.owner = self
    @pets[:cats] << cat
    @pets[:cats]
  end

  def buy_dog(name)
    dog = Dog.new(name)
    dog.owner = self
    @pets[:dogs] << dog
    @pets[:dogs]
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |pet_type|
      pet_type[1].each do |pet|
        pet.mood = 'nervous'
      end
    end
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end