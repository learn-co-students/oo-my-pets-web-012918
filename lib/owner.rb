class Owner
  ALL = []
  attr_accessor :name , :pets
  attr_reader :species

  #extend Persistable::ClassMethods
  def self.reset_all
    ALL.clear
  end

  def self.all
    ALL
  end

  def self.count
    ALL.size
  end
  # _____

  #if we want to add ALL << self (from initialize below) into Persistable
  #include Persistable::InstanceMethods

  def initialize(species)
    @species = species
    #super
    ALL << self # ^
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
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
    @pets.map do |species, pets|
      pets.map do |pet|
        pet.mood = 'nervous'
      end
    end
    @pets.clear
  end

  def list_pets
    num_fishes = @pets[:fishes].size
    num_dogs = @pets[:dogs].size
    num_cats = @pets[:cats].size

    "I have #{num_fishes} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
    
  end
end
