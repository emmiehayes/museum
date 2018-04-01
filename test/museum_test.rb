require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/museum'

class MuseumTest < Minitest::Test

  def test_it_exist
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_instance_of Museum, dmns
  end

  def test_it_has_a_name
  dmns = Museum.new("Denver Museum of Nature and Science")
  assert_equal "Denver Museum of Nature and Science", dmns.name
  end
end
