require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'

class NetworkTest < Minitest::Test
  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
    @nbc = Network.new("NBC")
  end

  def test_it_exists_with_attributes
    assert_instance_of Network, @nbc

    assert_equal "NBC", @nbc.name
    assert_equal [], @nbc.shows
  end
end