class Owner

  @@owners = []

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(name)
    @@owners << self
    @species = 'human'
    @name = name
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.count
  end

  def say_species
    "I am a #{@species}."
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
    @pets[:dogs].map do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    @pets.values.each do |species|
      species.map do |pet|
        pet.mood = 'nervous'
      end
    end
    @pets.clear
  end

  def list_pets
    count_fish = 0
    count_cats = 0
    count_dogs = 0
    @pets.each do |key, value|
      count_fish = value.count if key == :fishes
      count_cats = value.count if key == :cats
      count_dogs = value.count if key == :dogs
    end

    "I have #{count_fish} fish, #{count_dogs} dog(s), and #{count_cats} cat(s)."
  end

end
