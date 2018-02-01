class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  def initialize (name)
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a human."
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

  def feed_fish
    @pets[:fishes].each{ |fish|
      fish.mood = "happy"
    }
  end

  def play_with_cats
    @pets[:cats].each{ |cat|
      cat.mood = "happy"
    }
  end

  def walk_dogs
    @pets[:dogs].each{ |dog|
      dog.mood = "happy"
    }
  end

  def sell_pets
    @pets.each{ |type, array|
      array.each{ |pet|
        pet.mood = "nervous"
      }
    }
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    dog_count = @pets[:dogs].count
    cat_count = @pets[:cats].count
    fish_count = @pets[:fishes].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end
end
