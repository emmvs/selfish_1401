class Castle
  attr_reader :name, :width, :length, :ghost

  def initialize(name, width, length, ghost)
    @name = name
    @width = width
    @length = length
    @ghost = ghost
  end
end

# Build your own castle
castle = Castle.new("Ahrensburger Schloss", 18, 20, "Schubiduu...uh")
p castle
