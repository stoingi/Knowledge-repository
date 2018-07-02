#
# loop do
#   num1 = rand 1..10
#   num2 = rand 1..10
#   operators = ["-", "+  ", "/", "*"]
#   operator = rand 0..3
#
#   puts "How much is: #{num1} + #{num2}"
#   answer = gets.chomp.to_i
#
#   if answer == true
#     puts "Well done #{name} :) "
#   else
#     puts "Try again! "
#   end
# end



puts "Hello my friend, what's your name? "
name = gets.chomp.capitalize
puts "Hello #{name} and welcome to the game! "

loop do
  num1 = rand 1..20
  num2 = rand 1..20
  operators = ["-", "+  ", "/", "*"]
  operator = operators.sample
  # operator = rand 0..3
  # result = num1 + operators[operator] + num2
  puts "How much is: #{num1} #{operator} #{num2}"

  if

  command = gets.chomp.to_s
    loop do
      answer = gets.chomp
      break if answer.include?("next")

      if answer.to_i == result
        puts "Well done #{name} :) "
      else
        puts "Try again! "
      end
  end
  break if command.include?("quit")
end
