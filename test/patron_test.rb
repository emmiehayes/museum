require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/patron'

class PatronTest < Minitest::Test

  def test_it_exist
    p = Patron.new(name)
    assert_instance_of Patron, p
  end

  def test_it_can_have_a_name
    p = Patron.new("Bob")
    assert_equal "Bob", p.name
  end

  def test_it_can_have_an_interest
    p = Patron.new("Bob")
    assert_equal [], p.interest
  end

  def test_it_can_add_interest
    p = Patron.new("Bob")
    assert_equal ["Dead Sea Scrolls"] , p.add_interest
  end



end
