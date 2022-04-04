require './Turn'

class Question

def initialize (turn)
   @random_num1 = rand(1..20)
   @random_num2 = rand(1..20)
   @player_turn = turn
end

def question_generation
# need to get player from player class which is determined by turn

puts " #{@player_turn.turn_decider}: What does #{@random_num1} + #{@random_num2} equal?"
answer = $stdin.gets.chomp.to_i
  if(answer == @random_num1+@random_num2) 
    puts "YES! You are correct."
   @returnValue = [answer = true, player = @player_turn.turn_decider]
  else
    puts "Seriously? No!"
    @returnValue = [answer = false, player = @player_turn.turn_decider]
  end

end

def results
  return @returnValue
end


end 

# random = Question.new
# random.question_generation