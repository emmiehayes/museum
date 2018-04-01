require 'pry'

class Museum

attr_reader :name, :exhibits

  def initialize(name)
    @name = name
    @exhibit = {}
  end
end
