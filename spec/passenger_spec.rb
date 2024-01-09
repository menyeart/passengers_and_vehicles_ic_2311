require "./lib/passenger.rb"
require "rspec"
require "pry"

RSpec.describe "passenger" do
  it "exists and has attributes" do
    attributes = {
      "name" => "Matt",
      "age" => 37
    }
    matt = Passenger.new(attributes)

    expect(matt).to be_an_instance_of(Passenger)
    expect(matt.name).to eq("Matt")
    expect(matt.age).to eq(37)
  end

  it "can determine if the passenger is an adult" do
    attributes = {
      "name" => "Matt",
      "age" => 37
    }
    matt = Passenger.new(attributes)

    attributes2 = {
      "name" => "Fred",
      "age" => 12
    }
    matt = Passenger.new(attributes)
    fred = Passenger.new(attributes2)

    expect(matt.adult?).to eq(true)
    expect(fred.adult?).to eq(false)
  end

  it "can dtermine if the person is the driver" do
    attributes = {
      "name" => "Matt",
      "age" => 37
    }
    matt = Passenger.new(attributes)

    expect(matt.driver?).to eq(false)

    matt.drive

    expect(matt.driver?).to eq(true)
  end
end