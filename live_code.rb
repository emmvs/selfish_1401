class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Lion < Animal
  def talk(name)
    "#{name} roars"
  end
end

class Meerkat < Animal
  def talk(name)
    "#{name} barks"
  end
end

class Warthog < Animal
  def talk(name)
    "#{name} grunts"
  end
end

simba = Lion.new("Simba")
nala = Lion.new("Nala")
timon = Meerkat.new("Timon")
pumbaa = Warthog.new("Pumbaa")

animals = [simba, nala, timon, pumbaa]

animals.each do |animal|
  puts animal.talk(animal.name)
end

# In another Ruby file, create an array with Simba, Nala, Timon & Pumbaa, iterate over it and puts the sound each animal make

# Implement a ::phyla class method which will return an array of the phyla of the animal kingdom.
# Add an #eat(food) instance method in Animal which returns a sentence like “Timon eats a scorpion”. Then override this method for the Lion class, and return a sentence like “Simba eats a gazelle. Law of the Jungle!
