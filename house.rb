class House
  attr_reader :name, :width, :length, :ghost

  def initialize(name, ghost, width, length)

    @name = name
    @ghost = ghost
    @width = width
    @length = length
  end
end

house = House.new("Kilen", "Hackespacke", 50, 50)
# p house_in_sweden #=> ?????
puts "In #{house.name} lives the ghost #{house.ghost}. 👻"

# Inheritance


# Class methods


# Self
