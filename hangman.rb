## BEWARE THE SEMICOLON!

require 'pry'
require 'set'
#words = ['test']
words = ['angus',
         'onomatopeia',
         'mississippi',
         'cookies',
         'terminal',
         'illness',
         'communist',
         'dictator',
         'capitalist',
         'marxist',
         'darwinism']

def finished? (turns, guesses, answer)
  turns.zero? || answer.chars.all? { |l| guesses.include?(l) }
end

def greeting
  puts "Welcome to hang man"
end


#binding.pry

#binding.pry
def prompt_player
  #binding.pry
  #if guess.length != 1
  #guess = gets.chomp
  guess = $stdin.gets

  #if guess != [/[a-zA-Z]*/] 
   # puts "Try again foo"
    #char_check(guess)
 #end 

end

def display(guessed,guess,answer)
  answer.each_char  do |c| guessed.include? c 
  if guessed.include?(c)
   print c
  elsif
    print "_" 
  end
end

end


def game_over(turn_count,guessed,answer)
  if turn_count == 0
    puts "YOU Lose the Answer was #{answer}"
  else
    puts "you WIN"
  end

end




 def hangman(words)
  turn_count = ARGV.empty? ? 6 : ARGV[0].to_i
  guessed = Set.new
  answer = words.sample(1)[0] # words[rand(words.length)]
  greeting
  #display(guessed,answer)
  #binding.pry
  until finished?(turn_count, guessed, answer)
    guess = prompt_player
    guessed.add(guess) 
    unless answer.include?(guess)
      turn_count -= 1
    end
    display(guessed,guess,answer)
   end
  #display(guess,answer)
  game_over(turn_count,guessed,answer)
end

 hangman(words)
