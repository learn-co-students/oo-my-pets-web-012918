class Owner
  # code goes here
  require 'pry'

  attr_reader :species
  attr_accessor :name, :pets, :mood

  @@all = []

  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{@species}."
  end

  def self.count
    @@all.length
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    fish.owner = self
    @pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    cat.owner = self
    @pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    dog.owner = self
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    @pets.each do |pet_type, pet_list|
      pet_list.each do |pet|
        pet.mood = 'nervous'
        @pets = {:fishes => [], :dogs => [], :cats => []}
      end
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end


end
