require_relative "../livecode"

describe Animal do
  describe "#inizialize" do
    it "creates an Animal Instance" do
      animal = Animal.new("🐝")
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
end
