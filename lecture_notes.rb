# ?Behavior, Properties & States

# class House
  # attr_reader :name, :width, :length, :ghost

  # def initialize(name, ghost, width, length)

  #   # Instance methods
  #   @name = name
  #   @ghost = ghost
  #   @width = width
  #   @length = length
  # end

  # def area
  #   @length * @width
  # end

  # def name
  #   @name
  # end
# end

  # Encapsulation
  # attr_reader
  # Class methods

# class Skyscraper
# end

# class Castle
# end


# ?Inheritance
# Subclasses inheret methods and instance variable from parents
# But they can also define more variables/methods

#             Building
#   👇🏻            👇🏻                👇🏻
# House      Skyscraper          Castle

#             Pokemon_type
#   👇🏻            👇🏻                👇🏻
# Water          Fire            Electric

#                Human
#   👇🏻            👇🏻                👇🏻
#  Woman          Man            Non-binary

# attr_writer
# super (access to parent method with same name)
# Instance (.name, .has_butler?) vs Class method (.new, .create, .save)
# Instance methods on instances


# Class methods on classes
# ? Self
# self.class_method

# Facebook Examples
# class Post
#   def self.trending_topics
#     # code to find trending topics
#   end
# end

# class User
#   def self.friend_suggestions(user_id)
#     # code to find friend suggestions for a given user
#   end
# end

# Duolingo Examples
# class Lesson
#   def self.daily_target(user_id)
#     # code to find daily target for a given user
#   end
# end

# class User
#   def self.leaderboard
#     # code to generate the leaderboard
#   end
# end

# ? Self as instance

class User
  def age=(new_age)
    if new_age >= 0
      @age = new_age
    else
      puts "Age cannot be negative."
    end
  end

  def have_birthday
    self.age = self.age + 1  # Calls the age= method, ensuring age cannot be negative
  end
end

class Animal
  def make_sound
    "Some generic animal sound"
  end

  def describe
    "This animal makes a #{self.make_sound}"
  end
end

class Dog < Animal
  def make_sound
    "Woof!"
  end
end

dog = Dog.new
puts dog.describe  # Output: "This animal makes a Woof!"

# This principle suggests that all services offered
# by a module should be available through a uniform notation,
# which does not betray whether they are implemented
# through storage or computation. When you use self.attribute
# instead of directly using @attribute,
# the caller doesn't need to know whether the attribute
# is a stored property or computed through a method;
# they access it the same way in either case.

# In summary, using self can provide greater flexibility,
# maintainability, & readability in your code

class Animal
  def make_sound
    "Some generic animal sound"
  end

  def describe
    "This animal makes a #{make_sound}"
  end
end

class Dog < Animal
  def make_sound
    super + ", specifically a woof!"
  end
end

dog = Dog.new
puts dog.describe
# Output: "This animal makes a Some generic animal sound,
# specifically a woof!"
