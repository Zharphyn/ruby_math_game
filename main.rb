require './game'
require 'pp'

NumTurns = 3
@game = Game.new NumTurns

loop do
  player = "Player #{@game.whose_turn}"
  pp @game.ask_question
  @answer = gets.chomp
  @result = @game.check_answer @answer.to_i
  if @result == true 
    pp "#{player}: Yes, you are correct!"
  else
    pp "#{player}: No, You SUCK!!"
    if @game.whose_turn == 1
      if !@game.player1.lose_life
        @game.game_over = true
      end
    else
      if !@game.player2.lose_life
        @game.game_over = true
      end
    end
  end
  if !@game.game_over
    pp "P1: #{@game.player1.lives}/#{NumTurns} vs P2: #{@game.player2.lives}/#{NumTurns}"
    pp "--------------- NEW TURN ---------------"
  else
    if @game.player1.lives == 0
      pp "Player 2 wins with a score of #{@game.player2.lives}/#{NumTurns}"
    else
      pp "Player 1 wins with a score of #{@game.player1.lives}/#{NumTurns}"
    end
    pp "--------------- GAME OVER ---------------"
  end

  break if @game.game_over
  
  @game.player1.my_turn = !@game.player1.my_turn
  @game.player2.my_turn = !@game.player2.my_turn
  @game.question.new_question

end
