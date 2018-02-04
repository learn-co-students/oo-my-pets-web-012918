require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets
  ALL = []
  def initialize(species)
    @species = "human"
    ALL << self
    @pets = {:fishes => [], :dogs => [], :cats => [] }
  end

  def self.all
    ALL
  end
  def self.reset_all
    ALL.clear
  end
  def self.count
    ALL.count
  end
  def say_species
    "I am a #{self.species}."
  end
  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
  end
  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end
  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end
  def walk_dogs
    @pets[:dogs].each {|d| d.mood = "happy"}
  end
  def play_with_cats
    @pets[:cats].each {|c| c.mood = "happy"}
  end
  def feed_fish
    @pets[:fishes].each {|f| f.mood = "happy"}
  end
  def sell_pets
    @pets.each do |k,v|
      @pets[k].each {|p| p.mood = "nervous"}
      @pets[k].clear
    end
  end
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
