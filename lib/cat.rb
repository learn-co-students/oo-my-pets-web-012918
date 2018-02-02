class Cat
  attr_reader :name
  attr_accessor :mood
  def initialize(name)
    @name = name
    @mood = 'nervous'
  end
end
# 
# class Cat < Pet
#   def initialize(name)
#     super
#     @num_lives = 9
#     @loves = ["naps"]
#   end
# end
