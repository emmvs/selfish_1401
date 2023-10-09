require_relative "./building"
require_relative "./butler"

class Castle < Building
  attr_accessor :butler

  def initialize(name, length, width, ghost, ruler)
    super(name, length, width, ghost)
    @ruler = ruler
    @butler = Butler.new(self)
  end

  def has_a_butler?
    @butler != nil ? "yes, yes, we is rich" : "noooooo butler, we are poor"
  end

  def area
    super + 1000
  end
end

castle = Castle.new("Ahrensburger Schloss", 18, 20, "Schubiduu...uh", "Von Rantzau")
p castle

# # Build your own castle
# castle = Castle.new("Ahrensburger Schloss", 18, 20, "Schubiduu...uh")
# # p castle
# # p castle.butler = "James" # We can do this ebcause of our writer / accessor
# # puts "Does that castle have a butler?"
# # p castle.has_a_butler?
# puts "How big is the castle?"
# puts "- It has an area of #{castle.area} square meters 🏰"


# Real Life Example: super
# # Normal Airbnb Flat
#   def total_price(nights)
#     base_price * nights + cleaning_fee
#   end

# # Luxery Airbnb Flat
#   def total_price(nights)
#     super(nights) + concierge_fee
#   end


# # Normal post
#     def display
#     puts "Caption: #{caption}"
#     puts "Image: #{image_url}"
#   end

# # Post w/ add
#   def display
#     super()
#     puts "Ad: #{ad_text}"
#   end
