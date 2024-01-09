class Vehicle
  attr_reader :year, :model, :make, :passengers

  def initialize(year, make, model)
    @year = year
    @model  = model
    @make = make
    @speeding =  false
    @passengers = []
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    @passengers.sum { |pass| pass.adult? ? 1 : 0}
  end
end