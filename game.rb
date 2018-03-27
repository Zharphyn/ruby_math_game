require './player'
require './math_question'

class Game
  attr_reader :question
  attr_accessor :player1
  attr_accessor :player2
  
  def initialize()
    @player1 = Player.new("Player1",3)
    @player2 = Player.new("Player2",3)
    @question = Math_Question.new

  end

end
