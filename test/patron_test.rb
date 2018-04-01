require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/patron'

class PatronTest < Minitest::Test

  def test_it_exists
    bob = Patron.new(name)
    assert_instance_of Patron, bob
  end

  def test_patron_has_a_name
    bob = Patron.new("Bob")
    assert_equal "Bob", bob.name
  end

  def test_patron_can_have_interest
    bob = Patron.new("Bob")
    assert_equal [], bob.interests
  end

end
