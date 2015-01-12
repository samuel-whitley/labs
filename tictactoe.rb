#### I'm Lost 

WINS = [[1,2,3],[4,5,6],[7,8,9],[1,5,9],[7,5,3],[1,4,7],[2,5,8],[3,6,9]]
#board = [1,2,3,4,5,6,7,8,9]
#empty_board = [1,2,3,4,5,6,7,8,9]
require 'pry'

def greeting
puts "welcome to tictact toe player one is X and player 2 is O" 


end



def player(turn_count,board)
  if turn_count.even?
  input = gets.chomp

write(board,input)
  #if turn_count.even?
  #player = "x"
  #else
  #player = "o"
  #end
end


def Write(board,input)  
board[input] =  ""
end

def win?(turn_count,player)

end

#def computer

#end
#binding.pry

#def printboard(board)
#board.each_index do |x| 
    #if x == 2 || x==5
   #print "#{x+1}\n"
    #else
   #print  "#{x+1} "
    #end 
  #end  
#end  

def board
board = [1,2,3,4,5,6,7,8,9]
board.each_index do |x| 
    if x == 2 || x==5
   print "#{x+1}\n"
    else
   print  "#{x+1} "
    end 
  end
end


#binding.pry
def game
turn_count = 0
greeting
player(turn_count)
board
printboard(board)
win(turn_count,player)
while
end  
#bindingp.ry
game
