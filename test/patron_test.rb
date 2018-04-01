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

  def test_interest_can_be_added
    bob = Patron.new("Bob")
    assert_equal ["Dead Sea Scrolls"], bob.add_interest("Dead Sea Scrolls")
  end

  def test_interest_can_be_added
    bob = Patron.new("Bob")
    assert_equal ["Gems and Minerals"], bob.add_interest("Gems and Minerals")
  end

  def test_patron_can_have_multiple_interest_at_once
    bob = Patron.new("Bob")
    bob.add_interest("Dead Sea Scrolls")
    bob.add_interest("Gems and Minerals")
    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], bob.interests
  end


end
