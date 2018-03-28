require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/museum'

class MuseumTest < Minitest::Test

  def test_it_exist
    m = Museum.new(name)
    assert_instance_of Museum, m
  end

  def test_it_can_have_a_name
    m = Museum.new("Denver Museum of Nature and Science")
    assert_equal "Denver Museum of Nature and Science", m.name
  end

  def test_it_can_add_sing_exhibit
    m = Museum.new("Denver Museum of Nature and Science")
    assert_equal ["Dead Sea Scrolls" => 10],m.add_exhibit("Dead Sea Scrolls" => 10)
  end

  def test_it_can_add_additional_exhibit
    m = Museum.new("Denver Museum of Nature and Science")
    m.add_exhibit("Dead Sea Scrolls" => 10)
    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], m.add_exhibit("Gems and Minerals" => 0)
  end

end
