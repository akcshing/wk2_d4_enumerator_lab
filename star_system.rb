require("pry")

class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def has_planets
    return @planets.count
  end

  def planet_names
    return @planets.map{|planet| planet.name} 
  end

end
