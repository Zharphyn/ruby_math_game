#This class will contain the logic for a player
class Player
  attr_reader :lives
  attr_reader :name
  attr_accessor :my_turn

  def initialize(name, lives, turn)
    @name = name
    @lives = lives
    @my_turn = turn
  end

  def lose_life
    @lives -= 1
    @lives > 0 ? true : false 
  end 

end