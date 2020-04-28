class Players
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def decrement_score
    @score -= 1
  end

  def player_live?
    @score > 0
  end
end



