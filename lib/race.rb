require_relative 'car'

class Race
  attr_accessor :cars

  def initialize
    @cars = [Car.new, Car.new]
    @cars.first.speed = Random.rand(1..100)
    @cars.last.speed = Random.rand(1..100)
  end

  def winner
    @cars.first.speed > @cars.last.speed ?
    @winner = @cars.first : winner = @cars.last
  end

  def loser
    @cars.first.speed < @cars.last.speed ?
    @loser = @cars.first : loser = @cars.last
  end
end
