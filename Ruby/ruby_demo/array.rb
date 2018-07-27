# numbers = [4.3, 8, 15, 20]
# input_number = gets.chomp.to_i
# puts input_number + numbers.sample
#
#
# numbers.each do |number|
#   puts input_number * number
# end


#
# ingredients = ["Bacon", "Cheese", "Eggs"]
# ingredients.each do |food|
#   puts "#{food} is an important"
# end



names = ["Marion", "Ferdi", "Viola"]
puts "Ask me the user: "
student = gets.chomp
if names.include?(student)
 puts "Yes, that user is in our database!"
else
  puts "No, this user is not in our database!"
end
