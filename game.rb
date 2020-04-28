class Game

  def initialize
    @correct = "Great job! That's correct"
    @wrong = "Incorrect answer! better luck next time"
  end

  def answer_input
    print " > "
    answer = $stdin.gets.chomp
  end

  def correct_answer(p1, p2)
    p @correct
    p "P1: #{p1.score}/3 vs P2: #{p2.score}/3"

    "----- NEW TURN -----"  
  end

  def wrong_answer(p1, p2)
    p @wrong
    p "P1: #{p1.score}/3 vs P2: #{p2.score}/3"

    "----- NEW TURN -----"
  end

  def game_over
    p "----- GAME OVER -----"
    p "Good bye!"
  end
end