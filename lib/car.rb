class Car
  attr_accessor :speed, :name
  def initialize
    @speed = 0
  end
  def speed
    @speed
  end
  def name
    @name
  end
  def accelerate speed
    @speed = speed
  end
end
