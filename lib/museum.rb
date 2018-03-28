require 'pry'

class Museum
  attr_reader :name
  attr_accessor :exhibits

  def initialize(name)
    @name = name
    @exhibits = {}
  end

  def add_exhibit(exhibit)
    exhibits.map do |title, cost|
    @exhibits[title.to_s] = cost.to_i
  end

end


dmns = Museum.new("Denver Museum of Nature and Science")

p dmns.name
dmns.add_exhibit("Dead Sea Scrolls", 10)
dmns.add_exhibit("Gems and Minerals", 0)
p dmns.exhibits
