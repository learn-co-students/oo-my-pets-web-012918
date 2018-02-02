class Owner
  attr_accessor :cat, :dog, :fish, :name, :pets
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
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
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.map do |species, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
      @pets.clear
  end

  def list_pets
    fish_no = @pets[:fishes].count
    dog_no = @pets[:dogs].count
    cat_no = @pets[:cats].count
    "I have #{fish_no} fish, #{dog_no} dog(s), and #{cat_no} cat(s)."
  end

end
