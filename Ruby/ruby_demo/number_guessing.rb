
secret_number = rand(0..10)
puts "Welcome to the Number guessing Game! Please enter a number between 0 and 10: "
input_number = gets.chomp.to_i

loop do
  if input_number == secret_number
    # puts "It's true, you have guessed #{secret_number} :)"
    break
  else
    puts "Wrong, try again"
  end

  puts "Please enter a new number: "
  input_number = gets.chomp.to_i
end


puts "It's true, you have guessed #{secret_number} :)"


# if secret_number == input_number
#   puts "You're right!"
# else
#   puts "Wrong"
# end



secret_number = rand(0..10)

puts "Welcome to the Number guessing Game! Please enter a number between 0 and 10: "
input_number = gets.chomp.to_i

file = File.new("userlog.txt", "w")
file.write(input_number.to_s +"\n")

loop do
  if input_number == secret_number
    puts "It's true, you have guessed #{secret_number} :)"
    file.write("That's correct!")
    break
  else
    puts "Wrong, try again"

  end

  puts "Please enter a new number: "
  input_number = gets.chomp.to_i
  file.write(input_number.to_s + "\n")

  puts "You have guessed #{input_number}"
end


file.close
