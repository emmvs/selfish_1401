class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def eats(food)
    "#{@name} eats #{food}"
  end

  def self.habitats
    %w[Jungle Desert Grassland Forest Ocean Mountain]
  end
end

class Lion < Animal
  def talk
    "#{@name} roars"
  end

  def eats(food)
    "#{super(food)}. Law of the Jungle!"
  end
end

class Meerkat < Animal
  def talk
    "#{@name} barks"
  end
end

class Warthog < Animal
  def talk
    "#{@name} grunts"
  end
end

animals = []

simba = Lion.new("Simba")
nala = Lion.new("Nala")
timon = Meerkat.new("Timon")
pumbaa = Warthog.new("Pumbaa")

animals = [simba, nala, timon, pumbaa]

animals.each do |animal|
  puts "- #{animal.talk} 💬"
end

puts simba.eats("pumbaa")
