require './Question'

class Player

  def initialize
    @player1
    @player2 
    @player1_lives = 3 
    @player2_lives = 3
    @player_turn = Turn.new
  end

  def lives
    player_answer = Question.new(@player_turn)
    player_answer.question_generation
    if (!player_answer.results[0] && player_answer.results[1] === 'Player 1')
      
      @player1_lives -=1
     
    elsif (!player_answer.results[0] && player_answer.results[1]  === 'Player 2' )
      @player2_lives -=1
    
    end

    puts "P1: #{@player1_lives}/3 vs P2: #{@player2_lives}/3"

    @player_turn.turn_switcher

    
   
  #   if (player_answer.results[1] === 'Player 1')
  #   player_turn = Turn.new(false, true)
  #   else 
  #     player_turn = Turn.new(true,false)
  #  end 

    # player_turn.turn_switcher
    # player_turn.turn_decider
    
    puts "----NEW TURN----"
  end 

  def return_value 
  return [@player1_lives, @player2_lives]
  end

end
