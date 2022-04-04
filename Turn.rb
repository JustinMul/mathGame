class Turn

  def initialize 
  @player1_turn = true
  @player2_turn = false
  end

  # start with player 1 

  def turn_decider
    
    if (@player1_turn == true)
      current_turn = 'Player 1'
    else 
      current_turn= 'Player 2'
    end   
    
    return current_turn
  end

  def turn_switcher

    @player1_turn = !@player1_turn
    @player2_turn = !@player2_turn
  end



end 
