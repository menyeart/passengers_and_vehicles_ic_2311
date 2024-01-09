class Park
  attr_reader :name, :admission_price, :vehicles
  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def enter_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    @vehicles.map { |vehicle| vehicle.passengers }.flatten
  end

  def calculate_revenue
    passengers.sum { |pass| pass.adult? ? 25 : 0}
  end
end