class Skyscraper
  attr_reader :name, :width, :length, :ghost

  def initialize(name, width, length, ghost)
    @name = name
    @width = width
    @length = length
    @ghost = ghost
  end
end

# Create a new skyscraper
skyscraper = Skyscraper.new("Empire State Building", 423, 56, "Evelyn Francis McHale")
p skyscraper
