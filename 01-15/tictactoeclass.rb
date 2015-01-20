require 'pry'


def greeting
  puts 'welcome to tic tac toe'
end

def over
  puts 'thanks for playing'
end

class Option

def choice
    puts "\npick X or O\n"
    input = gets.chomp.upcase
    until input =~ /^[xo]$/i
    puts "Please Pick a vaild option" 
    input = gets.chomp.upcase
    end
    other = input == 'X' ? 'O' : 'X'
    game = Game.new "#{input}", "#{other}"
    game.tic
  end
end

class Game
   #include Enumurable 
  attr_accessor :player1, :player2, :board, :wins, :turn_count
 
  def initialize(player1, player2) 
    @player1 = player1
    @player2 = player2 
    #@print_board = print_board
    #@win = win?
    @board = [1,2,3,4,5,6,7,8,9]
    @wins = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
         [0, 3, 6], [1, 4, 7], [2, 5, 8],
         [0, 4, 8], [2, 4, 6]]
    @turn_count = 0
  end

   def print_board
  puts "

              |               |  
  #{@board[0]}|               |  #{@board[1]}         #{@board[2]}
--------------|---------------|-----------
              |               |
              |               |
  #{@board[3]}|               |  #{@board[4]}         #{@board[5]}
              |               |    
______________________________|_____________ 
  #{@board[6]}|               |  #{@board[7]}         #{@board[8]}
              |               |
              |               |  
"
  end 

  def finished
   @board.all? {|x| x.is_a? String} || self.win?
  end


  def win?
  self.wins.any? do |x,y,z|
      if @board[x] == @board[y] && @board[y]== @board[z]
        return @board[y]
       end  
      end
   end 

  
def promt
  puts 'Press 1 to play again any to quit.'
  result = gets.chomp.to_i
  if result == 1
    test = Option.new
    test.choice
  elsif result !=
    over
  end
end

def game_over
  if self.win?
     puts "#{self.win?} won the game"
   elsif self.board.all? {|x| x.is_a? String}
     puts "game is a draw"
  end
  promt
end



  def tic
    until finished
      print_board
      puts "\nPlayer please Take a Square\n"
      choice = gets.chomp
        if @turn_count.even?
          puts 
          @board[choice.to_i-1] = @player1
        else
          @board[choice.to_i-1] = @player2
        end
      @turn_count += 1
    end
    game_over
  end



end

#binding.pry
greeting
start = Option.new
start.choice

#binding.pry



  