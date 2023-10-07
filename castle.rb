require_relative "./building"

class Castle < Building
  attr_accessor :butler

  def has_a_butler?
    @butler != nil ? "yes, yes, we is rich" : "noooooo butler, we are poor"
  end
end

# Build your own castle
castle = Castle.new("Ahrensburger Schloss", 18, 20, "Schubiduu...uh")
# p castle
# p castle.butler = "James" # We can do this ebcause of our writer / accessor
puts "Does that castle have a butler?"
p castle.has_a_butler?
