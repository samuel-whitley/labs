puts "Pick a number between 1 and 100"
random_num = rand(100)
guess = gets.chomp.to_i
until guess == random_num do
    if guess > random_num
      puts "your guess is too high"
      guess = gets.chomp.to_i
    else guess < random_num
      puts 'your guess it too low'
      guess = gets.chomp.to_i
    end

  end
  puts 'You got it'
