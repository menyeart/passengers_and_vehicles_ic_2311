require "./lib/vehicle"
require "./lib/passenger"
require "rspec"

RSpec.describe "vehicle" do
  it "exists and has atrributes" do
    honda = Vehicle.new("2001", "Honda", "Civic")

    expect(honda.year).to eq("2001")
    expect(honda.make).to eq("Honda")
    expect(honda.model).to eq("Civic")
  end

  it "can determine if it is speeding" do
    honda = Vehicle.new("2001", "Honda", "Civic")

    expect(honda.speeding?).to eq(false)

    honda.speed

    expect(honda.speeding?).to eq(true)
  end

  it "has a list of passengers" do
    honda = Vehicle.new("2001", "Honda", "Civic")

    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    
    expect(honda.passengers).to eq([])

    honda.add_passenger(charlie)
    honda.add_passenger(jude)

    expect(honda.passengers).to eq([charlie, jude])
    expect(honda.passengers).to_not eq([charlie, jude, taylor])
  end

  it "has a list of passengers" do
    honda = Vehicle.new("2001", "Honda", "Civic")

    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    
    honda.add_passenger(charlie)
    honda.add_passenger(jude)
    honda.add_passenger(taylor)

    expect(honda.num_adults).to eq(2)
  end
end