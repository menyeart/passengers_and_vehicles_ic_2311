class Passenger
  attr_reader :name, :age

  def initialize(atts)
    @name = atts["name"]
    @age = atts["age"]
  end

  def adult?
    @age >= 18
  end


end