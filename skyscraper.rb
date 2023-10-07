require_relative "./building"

class Skyscraper < Building

  # Class method
  def self.cities
    ["New York City", "Mexico City", "Dubai", "Shanghai"]
  end
end

# Create a new skyscraper
skyscraper = Skyscraper.new("Empire State Building", 423, 56, "Evelyn Francis McHale")
# p skyscraper
puts "There are skyscrapers in #{Skyscraper.cities.join(", ")}"
