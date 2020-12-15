require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/character'
require './lib/show'

class CharacterTest < Minitest::Test
  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
  end

  def test_it_exists_with_attributes
    
  end
end