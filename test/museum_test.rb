require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/museum'
require './lib/patron'

class MuseumTest < Minitest::Test

  def test_it_exist
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_instance_of Museum, dmns
  end

  def test_it_has_a_name
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_equal "Denver Museum of Nature and Science", dmns.name
  end

  def test_it_can_add_exhibit
    dmns = Museum.new("Denver Museum of Nature and Science")
    dmns.add_exhibit("Dead Sea Scrolls", 10)
    assert_equal ({"Dead Sea Scrolls" => 10}), dmns.exhibits
  end

  def test_it_can_add_other_exhibit
    dmns = Museum.new("Denver Museum of Nature and Science")
    dmns.add_exhibit("Gems and Minerals", 0)
    assert_equal ({"Gems and Minerals" => 0}), dmns.exhibits
  end

  def test_it_can_have_multiple_exhibits
    dmns = Museum.new("Denver Museum of Nature and Science")
    dmns.add_exhibit("Dead Sea Scrolls", 10)
    dmns.add_exhibit("Gems and Minerals", 0)
    assert_equal ({"Dead Sea Scrolls" => 10, "Gems and Minerals" => 0}), dmns.exhibits
  end

  def test_it_can_admit_patrons_at_10_dollars_per
    dmns = Museum.new("Denver Museum of Nature and Science")
    bob = Patron.new("Bob")
    dmns.admit_patron("Bob", 10)
    assert_equal ({"Bob" => 10}), dmns.patrons
  end

  def test_revenue_increases_by_10_when_patron_admitted
    dmns = Museum.new("Denver Museum of Nature and Science")
    bob = Patron.new("Bob")
    dmns.admit_patron("Bob", 10)
    assert_equal 10, dmns.revenue
  end

  def test_revenue_increases_beyond_single_admission
    dmns = Museum.new("Denver Museum of Nature and Science")
    bob = Patron.new("Bob")
    dmns.admit_patron("Bob", 10)
    dmns.admit_patron("Sally", 10)
    assert_equal 20, dmns.revenue
  end

  def test_revenue_generates_for_patron_interest
    skip
    dmns = Museum.new("Denver Museum of Nature and Science")
    dmns.add_exhibit("Dead Sea Scrolls", 10)
    dmns.add_exhibit("Gems and Minerals", 0)

    bob = Patron.new("Bob")
    bob.add_interest("Gems and Minerals")
    bob.add_interest("Dead Sea Scrolls")
    bob.add_interest("Imax")

    sally = Patron.new("Sally")
    sally.add_interest("Dead Sea Scrolls")

    assert_equal 20, dmns.revenue
  end

end
