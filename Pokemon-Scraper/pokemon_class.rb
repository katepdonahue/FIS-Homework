class Pokemon
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def say_name
    "#{name}!"
  end
  
end