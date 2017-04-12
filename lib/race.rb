require_relative 'car'

class Race
  attr_accessor :cars

  def initialize
    @cars = [Car.new, Car.new]
    @cars.first.name = 'Car_One'
    @cars.last.name = 'Car_Two'
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

# to race, simply CD into the lib folder in the command line and type "ruby race.rb"
race = Race.new
puts race.winner.name
