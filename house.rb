require_relative "./building"

class House < Building 
end

house = House.new("Kilen", 50, 50, "Hackespacke")
p house #=> ?????
puts "In #{house.name} lives the ghost #{house.ghost}. 👻"

# p house.area
# p house.name
p house.who_haunts_this_house
