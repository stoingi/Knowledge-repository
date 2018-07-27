puts "Please enter your weight (in kg): "
weight = gets.chomp.to_i
puts "Please enter your height (in m): "
height = gets.chomp.to_f

def calculate_bmi(weight, height)
  (weight / height) / height
end

puts calculate_bmi(weight, height)



# def calculate_bmi(w, h)
# 	(w / h) / h
# end
