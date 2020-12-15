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
end