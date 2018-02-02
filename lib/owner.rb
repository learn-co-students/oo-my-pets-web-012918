require 'pry'

class Owner

  attr_accessor :pets, :name, :fish, :dog, :cat
  attr_reader :species

  @@all = []

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    @species = species
    "I am a #{species}."
  end

  def buy_fish (name)
    @pets = pets
    pets[:fishes] = Fish.new(name)
  end

end
