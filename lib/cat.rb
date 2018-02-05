require 'pry'

class Cat

  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    # binding.pry
    @name = name
    @mood = 'nervous'
  end

end
