class House
  #  Encapsulation
  attr_reader :name, :width, :length, :ghost

  def initialize(name, ghost, width, length)

    # Instance methods
    @name = name
    @ghost = ghost
    @width = width
    @length = length
  end

  def area
    @length * @width
  end

  # def name
  #   @name
  # end
end

house = House.new("Kilen", "Hackespacke", 50, 50)
p house #=> ?????
puts "In #{house.name} lives the ghost #{house.ghost}. 👻"

p house.area
p house.name


# Inheritance
# Behavior & States

# class House
# end

# class Skyscraper
# end

# class Castle
# end


# Class methods


# Self
