class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main = []
    @shows.each do |show|
      show.characters.each do |character|
       main << character if character.salary > 500_000 && character.name == character.name.upcase
      end
    end
    main
  end

  def actors_by_show
    actor_names = Hash.new(0)

    @shows.each do |show|
      actor_names[show] = show.actors
    end
    actor_names
  end

  def shows_by_actor
    
  end
end