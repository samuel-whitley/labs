require 'pry'

board = [1,2,3,4,5,6,7,8,9]

WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
         [0, 3, 6], [1, 4, 7], [2, 5, 8],
         [0, 4, 8], [2, 4, 6]]
def greeting
  puts "\nwelcome to tic tac toe\n"
end

def charselect
  puts "\npick X or O\n"
  input = gets.chomp.upcase
  until input =~ /^[xo]$/i
    puts "Please Pick Again" 
    input = gets.chomp.upcase
  end
  other = input == 'X' ? 'O' : 'X'
  return input, other
end


def print_board(board)
  puts "
  #{board[0]}  #{board[1]}  #{board[2]}


  #{board[3]}  #{board[4]}  #{board[5]}


  #{board[6]}  #{board[7]}  #{board[8]}
"
 end 

#def writeboard(board,player1,player2)
  #puts "pick a square"
  #choice = gets.chomp
  #turn_count = 1
  #until choice =~ /^[1-9]$/
    #puts "thats not a nubmer"
    #choice = gets.chomp 
  #end
#end  

#def gameover(winner)
  
  #if winner == 
   #puts "#{winner} won the game\n"
  #else
   #puts "draw game"
  #end
#end

def finished(board,player1,player2)
winner = win?(board)
board.all? {|x| x.is_a? String} || winner
  if winner
    puts "#{winner} won the game"
  else
    puts "game is a draw"
  end
end

def win?(board)
WINS.any? do |x,y,z|
    if board[x] == board[y] && board[y]==board[z]
      return board[y]
     end  
  end
 end

# def game_over(winner)
#   if winner
#   puts "#{winner} won the game"
#   else
#   puts "game is a draw "
#   end

#   #break if 
# end


def tic_tac_toe(board)
  greeting
  player1, player2 = charselect
  turn_count = 1
until finished(board,player1,player2)
    print_board(board)
    puts "Take a Square"
    choice = gets.chomp
    if turn_count.odd?
      board[choice.to_i-1] = player1
    else
      board[choice.to_i-1] = player2
    end
    turn_count += 1
    #binding.pry
  end
  game_over(winner)
end
    

tic_tac_toe(board)
#binding.pry