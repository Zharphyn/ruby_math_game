# This class will generate question / answer pairs

class Math_Question


  def initialize()
    new_question
  end

  def new_question
    @value1 = rand(1..20)
    @value2 = rand(1..20)
    @answer = @value1 + @value2   
  end

  def get_question
    return "What does #{@value1} plus #{@value2} equal?"
  end

  def check_answer answer
    @answer == answer ? true : false 
  end

end

