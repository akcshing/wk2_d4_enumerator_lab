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

  def get_planet_by_name(planet_to_find)
    @planets.find {|planet| planet.name == planet_to_find}
  end

  def get_largest_planet
    # largest_planet = @planets.max { |planet| planet.diameter}
    # return largest_planet.name
    @planets.reduce(planets[0]) {|big, planet| big.diameter > planet.diameter ? big : planet}
    # return @planets.diameter.max
    # diameters = @planets.map {|planet| planet.diameter}
    # p diameters.max
    # @planets.max{ |planet| planet.diameter }
  end
end
