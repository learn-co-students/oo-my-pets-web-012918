class Dog
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood

  def initialize(name)
    @name = name
    @mood = 'nervous'
  end

  def mood=(mood)
    @mood = mood
  end
end
