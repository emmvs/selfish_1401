require_relative "../livecode"

describe Lion do
  describe "#initialize" do
    it "creates a Lion Instance" do
      simba = Lion.new("Simba")
      expect(simba).to be_a(Lion)
    end
  end

  describe "#eat" do
    it "overrides Animal#eat and returns a cruel sentence" do
      simba = Lion.new("Simba")
      sentence = simba.eat("a gazelle")
      expect(sentence).to eq("Simba eats a gazelle. Law of the Jungle!")
    end
  end
end
