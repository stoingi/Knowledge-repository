secret_number = rand(1..100)
puts secret_number
winner = false
puts "say number"

while winner == false
  guess = gets.chomp.to_i
  if guess < secret_number
    puts "It's bigger"
  elsif guess > secret_number
    puts "It's smaller"
  else
    puts "You're right"
    winner = true
  end
end
