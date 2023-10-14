require_relative "../livecode"

describe Animal do
  describe "#inizialize" do
    it "creates an Animal Instance" do
      animal = Animal.new("🦥")
      expect(animal).to be_a(Animal)
    end

    it "creates an Animal w/ a Name" do
      animal = Animal.new("🐝")
      expect(animal.name).to eq("🐝")
    end
  end

  describe "::habitats" do
    it "returns the list of habitats for animals" do
      expect(Animal.habitats.size).to eq(6)
    end
  end

  describe "#eat" do
    it "returns a sentence stating the animal is eating some food" do
      animal = Animal.new("Babe")
      sentence = animal.eat("a carrot")
      expect(sentence).to eq("Babe eats a carrot")
    end
  end
end
