puts "Hello there, what's your name?"
name = gets.chomp
puts "Hello #{name.capitalize}, welcome to the number guessing game!"
secret_number = rand(1..100)
puts "Pick any number between 1 and 100:"
winner = false
numbers_guessed = []

while winner == false
  guess = gets.chomp.to_i
  numbers_guessed.each do |x|
    puts x
  end

  if numbers_guessed.include?(guess)
    puts "You've already guessed this number"
  end

  numbers_guessed << guess

  if guess > secret_number
    puts "The number is smaller than the one"
  elsif guess < secret_number
    puts "The number is greater than the one"
  else
    puts "Congratulations, you've got it!"
    winner = true
  end
end
