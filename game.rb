require './player'
require './math_question'
require 'pp'

class Game
  attr_reader :question
  attr_accessor :player1
  attr_accessor :player2
  attr_accessor :game_over

  def initialize(numturns)
    @player1 = Player.new("Player 1", numturns, true)
    @player2 = Player.new("Player 2", numturns, false)
    @question = Math_Question.new
    @game_over = false

  end

  def whose_turn
    @player1.my_turn == true ? 1 : 2
  end

  def ask_question()
    player = "Player #{whose_turn}"
     "#{player}: #{@question.get_question}"
    
  end

  def check_answer answer
    @question.check_answer answer

  end


end
