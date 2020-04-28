require './players'
require './questions'
require './game'

p1 = Players.new('Player 1')
p2 = Players.new('Player 2')
counter = 0
playersArray = Array[p1, p2]

game = Game.new
loop do
  current_player = playersArray[counter]
  newQuestion = Questions.new
  p "#{current_player.name}: #{newQuestion.ask_question}"
  answer = game.answer_input.to_i
  comparison = newQuestion.answer_comparison?(answer)

  if comparison
    p game.correct_answer(p1, p2)
  else
    current_player.decrement_score
    p game.wrong_answer(p1, p2)
    
  end

  if counter == 0
    counter = 1
  elsif counter == 1
    counter = 0
  end

  if p1.player_live? == false || p2.player_live? == false
    break
  end
end 

if p1.player_live? == false
  p "#{p2.name} wins with a score of #{p2.score}/3 "
  game.game_over
elsif p2.player_live? == false
  p "#{p1.name} wins with a score of #{p1.score}/3 "
  game.game_over
end



