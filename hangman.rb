## BEWARE THE SEMICOLON!

require 'pry'
require 'set'

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

def game_over
  
end

def prompt_player
  #binding.pry
  return guess = $stdin.gets.chomp
end

def hangman(words)
  turn_count = ARGV.empty? ? 6 : ARGV[0].to_i
  guessed = Set.new
  answer = words.sample(1)[0] # words[rand(words.length)]
  greeting
  #binding.pry
  until finished?(turn_count, guessed, answer)
    guess = prompt_player
    guessed.add(guess) 
    unless answer.include?(guess)
      turn_count -= 1
    end
   end
  game_over 
end

hangman(words)
