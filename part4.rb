class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

def rps_game_winner(game)

    raise WrongNumberOfPlayersError unless game.length == 2
    move1 = game[0][1]
    move2 = game[1][1]
    raise NoSuchStrategyError unless /[R|P|S]/.match(move1) && /[R|P|S]/.match(move2)
    if move1 == move2 || (move1 == "R" && move2 == "S") || (move1 == "P" && move2 == "R") || (move1 == "S" && move2 == "P")
      game[0]
    else
      game[1]
    end
end

#Helper function for rps tournament
def rps_game_loser(game)

    raise WrongNumberOfPlayersError unless game.length == 2
    move1 = game[0][1]
    move2 = game[1][1]
    raise NoSuchStrategyError unless /[R|P|S]/.match(move1) && /[R|P|S]/.match(move2)
    
    if move1 == move2 || (move1 == "R" && move2 == "S") || (move1 == "P" && move2 == "R") || (move1 == "S" && move2 == "P")
      2
    else
      0
    end
end

def rps_tournament_winner(tourn)

  tourn = tourn.flatten
  
  if tourn.length == 2
    return tourn
  end
  i = 0
  while i < tourn.length
    game = [[tourn[i], tourn[i+1]], [tourn[i+2], tourn[i+3]]]
    delind = rps_game_loser(game)
    tourn.delete_at(i+delind)
    tourn.delete_at(i+delind)
    i = i + 2
  end
  rps_tournament_winner(tourn)
end

p rps_game_winner([["Armando","P"],["Dave","P"]])
p rps_tournament_winner([[[ ["Armando", "P"], ["Dave", "S"] ],[ ["Richard", "R"],  ["Michael", "S"] ] ],[[ ["Allen", "S"], ["Omer", "P"] ],[ ["David E.", "R"], ["Richard X.", "P"] ]]])
