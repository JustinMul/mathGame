require './Player'
require './Question'
require './Turn'
class Game
  
 
  def main_game 
  @status = true
  @game = Player.new
  turn = Turn.new 
 
  while @status
    @game.lives
    game_over
   end   

  end

  def game_over 
    if @game.return_value[0] == 0 
    puts "player 2 wins with a score of #{@game.return_value[1]}/3"
    return @status=false
    elsif  @game.return_value[1] == 0
      puts "player 1 wins with a score of #{@game.return_value[0]}/3"

    end
  end


end

playGame = Game.new
playGame.main_game

