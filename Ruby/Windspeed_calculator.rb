

def beaufort_knots(beaufort_value)
  beaufort_value * 3
end

beaufort_max = 12
input = 0

while input <= 12
  puts "Enter the Beaufort value: "
  input = gets.chomp.to_i
  if input > 12
    puts "The #{input} does not exist!!!! Try another"
    break
  end

  knots = beaufort_knots(input)

  puts knots

  # break if input > 12
end




def beaufort_knots(beaufort_value)
  beaufort_value * 3
end

beaufort_max = 12
input = 0

while input <= 12
  puts "Enter the Beaufort value: "
  input = gets.chomp.to_i
  if input > 12
    puts "The #{input} does not exist!!!! Try another"
    break
  end

  knots = beaufort_knots(input)

  puts knots

  # break if input > 12
end
