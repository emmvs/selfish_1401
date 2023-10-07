class Building
  attr_reader :name, :width, :length, :ghost

  def initialize(name, width, length, ghost)
    @name = name
    @width = width
    @length = length
    @ghost = ghost
  end

  def area
    @width * @length
  end

  def who_haunts_this_house
    @ghost
  end
end
