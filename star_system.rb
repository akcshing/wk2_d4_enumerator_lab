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

  def get_smallest_planet
    @planets.reduce(planets[0]) {|smallest, planet| smallest.diameter < planet.diameter ? smallest : planet}
  end

  def get_planets_with_no_moons
    @planets.find_all {|planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(number_moons)
    result_planets = @planets.find_all {|planet| planet.number_of_moons > number_moons}
    result_planets.map {|planet| planet.name}
  end

  def get_number_of_planets_closer_than(distance)
    result_planets = @planets.find_all {|planet| planet.distance_from_sun < distance}
    result_planets.count
  end

  def get_total_number_of_moons
    @planets.sum{|planet| planet.number_of_moons}
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun
    # result_planets = @planets.sort{|planet| planet.distance_from_sun}
    # result_planets = @planets.map {|planet| planet.distance_from_sun}.sort
    # result_planets.map {|planet| planet.name}
    # sort @planets array by distance, smallest to biggest
    # and then return an array of their names
    @planets.sort{|planet| planet.distance_from_sun}
  end
end
