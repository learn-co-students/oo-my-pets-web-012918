class Owner
  attr_accessor :name, :pets
  attr_reader  :species



  @@owners = []

  def initialize(name)
    @name = name
    @species = name
    @@owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    return "I am a #{@species}."
  end

  # def pets
  #   @pets
  # end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.length
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood=("happy")
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood=("happy")
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood=("happy")
    end
  end

  def sell_pets
    pets[:dogs].each do |dog|
      dog.mood=("nervous")
    end

    pets[:cats].each do |cat|
      cat.mood=("nervous")
    end

    pets[:fishes].each do |fish|
      fish.mood=("nervous")
    end

    pets[:fishes] = []
    pets[:cats] = []
    pets[:dogs] = []
  end

  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end



end
