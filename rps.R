rpspor <- function() {
  
  print("Let's play pao-ying-chub !!")
  print("RULES") 
  print("1. WIN 3 TIMES TO WIN THE GAME")
  print("2. LOSE 3 TIMES THEN YOU WASTED")
  
  attemps <- 0
  wincount <- 0
  losecount <- 0
  
  while (attemps < 1 & wincount < 3 & losecount < 3){
    
    move <- readline("ENTER YOUR MOVE : ")
    
    opts <- c("rock", "paper", "scissors")
    comp_move <- sample(opts, 1)
    print(paste(move, "vs", comp_move))
    
    if (move == "rock" & comp_move == "scissors" | move == "paper" & comp_move == "rock" | move == "scissors" & comp_move == "paper") {
      wincount <- wincount + 1
      print("You win")
    } else if (move == "scissors" & comp_move == "rock" | move == "rock" & comp_move == "paper" | move == "paper" & comp_move == "scissors") {
      losecount <- losecount + 1
      print("You lose")
    } else if (move == comp_move) {
      print("TIE")
      print("TRY AGAIN")
    } else {
      print(paste("There is no", move))
      print("What kind of dumb are you?")
      print("Start again")
    }
  }
  if (wincount == 3) {
    print("YOU WIN THE GAME")
  } else if (losecount == 3) {
    print("YOU LOSE")
  }
}