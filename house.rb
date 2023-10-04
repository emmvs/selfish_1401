def House
  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
  end
end

house_in_sweden = House.new("Kilen", 500, 400)
p house_in_sweden #=> ?????
