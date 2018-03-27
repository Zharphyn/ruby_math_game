require './game'
require 'pp'

@game = Game.new

pp @game.question.get_question
@answer = gets.chomp
pp "@answer = #{@answer} and is a #{@answer.class}"
@game.check_answer @answer.to_i