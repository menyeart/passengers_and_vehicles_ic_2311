class Passenger
  attr_reader :name, :age

  def initialize(atts)
    @name = atts["name"]
    @age = atts["age"]
    @driver = false
  end

  def adult?
    @age >= 18
  end

  def driver?
    @driver
  end
    

  def drive
    @driver = true
  end


end