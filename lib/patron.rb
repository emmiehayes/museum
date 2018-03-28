require 'pry'

class Patron

attr_reader :name, :interest

  def initialize(name)
    @name = name
    @interest = []
  end

  def add_interest(interest)
    @interest << interest
  end
end

  bob = Patron.new("Bob")

p bob.name
p bob.interest
p bob.add_interest("Dead Sea Scrolls")
