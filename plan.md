Nouns: lives, questions, turn, gameover, answer check

player: this is used to see how many lives each player has remaining
initialize player1, player 2
  -lives is now a subsection
  -requires result from answer check
  -will have a lives counter and subtracter

question: this is used to generate a question 
  -random numbers will need to be passed Not Needed
  -player turn will be needed
random Number: generates the 2 random numbers for the questions 
(add this section to question) DONE

Maybe combine with question 
answer check: compares the user answer against the actual answer
-contains user i/o will need to use a $stdin.gets.chomp

Turn: Used to determin who's turn it currently is
-called in the game state maybe?
-manages current Player
-initialize p1 and p2 starting state 
  - p1_turn = true 
  - p2_turn = false
method determining turn
- if statement to check who has true and set the player value to them
- at end of method !p1_turn and !p2_turn to switch turn



Game is master class

Gameover: Used to see if either play is out of lives 
-require number of lives left for each player

