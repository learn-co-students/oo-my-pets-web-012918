class Owner
  # code goes here
  @@owners = []

  attr_reader :species
  attr_accessor :pets, :name

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@owners << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.length
  end

  def self.reset_all
    @@owners = []
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dogs|
      dogs.mood= "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cats|
      cats.mood= "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood= "happy"
    end
  end

  def sell_pets
    @pets.each do |pet_type, pet_objects|
      pet_objects.each do |object|
        object.mood= "nervous"
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
