require "./lib/park"
require "./lib/passenger"
require "./lib/vehicle"
require "rspec"

RSpec.describe "Park" do
  it "exists and has attributes" do
    rocky = Park.new("Rocky Mountain NP", 25)

    expect(rocky).to be_an_instance_of(Park)
    expect(rocky.name).to eq("Rocky Mountain NP")
    expect(rocky.admission_price).to eq(25)
  end

  it "can list all vehicles" do
    rocky = Park.new("Rocky Mountain NP", 25)

    honda = Vehicle.new("2001", "Honda", "Civic")

    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    
    honda.add_passenger(charlie)
    honda.add_passenger(jude)
    honda.add_passenger(taylor)

    expect(rocky.vehicles).to eq([])

    rocky.enter_vehicle(honda)

    expect(rocky.vehicles).to eq([honda])
  end

  it "it can list all passengers that have entered the park" do
    rocky = Park.new("Rocky Mountain NP", 25)

    honda = Vehicle.new("2001", "Honda", "Civic")

    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    
    honda.add_passenger(charlie)
    honda.add_passenger(jude)
    honda.add_passenger(taylor)

    rocky.enter_vehicle(honda)

    expect(rocky.passengers).to eq([charlie, jude, taylor])
  end

  it "can calculate revenue" do
    rocky = Park.new("Rocky Mountain NP", 25)

    honda = Vehicle.new("2001", "Honda", "Civic")

    charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20}) 
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    
    honda.add_passenger(charlie)
    honda.add_passenger(jude)
    honda.add_passenger(taylor)

    rocky.enter_vehicle(honda)

    expect(rocky.calculate_revenue).to eq(50)
  end
end