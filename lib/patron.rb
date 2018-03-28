require 'pry'

class Patron

attr_reader :name
attr_accessor :interests

  def initialize(name)
    @name = name
    @interests = []
  end

  def add_interest(interest)
  @interests.push(interest)
  end

end

  bob = Patron.new("Bob")

p bob.name
bob.add_interest("Dead Sea Scrolls")
bob.add_interest("Gems and Minerals")
p bob.interests
