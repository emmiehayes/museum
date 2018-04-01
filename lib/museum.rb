require 'pry'
require_relative 'patron'

class Museum

attr_reader :name, :exhibits, :patrons, :revenue

  def initialize(name)
    @name = name
    @exhibits = {}
    @patrons = {}
    @revenue = 0
  end

  def add_exhibit(title, cost)
    @exhibits[title] = cost
  end

  def admit_patron(name, fee)
    @patrons[name] = fee
  end


end
