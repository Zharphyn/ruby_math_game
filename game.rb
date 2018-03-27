require './player'
require './math_question'
require 'pp'

class Game
  attr_reader :question
  attr_accessor :player1
  attr_accessor :player2

  def initialize()
    @player1 = Player.new("Player1",3, true)
    @player2 = Player.new("Player2",3, false)
    @question = Math_Question.new

  end

  def ask_question()
    @player1.my_turn == true ? "Player 1: #{@question.get_question}" : "Player 2: #{@question.get_question}"
    
  end

  def check_answer answer
    puts "-----------------------------------------------------"
    puts "answer = #{answer} and is a #{answer.class}"
    puts "-----------------------------------------------------"
    result = @question.check_answer answer
    if result == true 
      pp "Yes, you are correct!"
    else
      pp "No, You SUCK!!" 
      # remove life
    end
  end
end
