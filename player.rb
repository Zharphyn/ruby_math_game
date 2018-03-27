#This class will contain the logic for a player
class Player
  attr_reader :lives
  attr_reader :name

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def lose_life
    @lives -= 1
    @lives == 0 ? true : false 
  end 

end