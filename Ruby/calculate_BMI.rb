#This program helps to convert your weigth to BMI

#Metric BMI Formula; BMI = weight (kg) ÷ height2 (m2)
#[60 : (1,6 m)2 = 23,4].

  puts "What is your weight? "
  weight = gets.chomp.to_i
  puts "What is your heigth in meters? "
  height = gets.chomp.to_f
  BMI = weight / (height**2)
  puts "Well you weight #{weight} kilograms and you are #{height} meters tall, so your BMI is #{BMI} "
  if BMI <= 20
    puts "Your BMI is lower than it's healthy!"
  elsif BMI >= 20 && BMI <= 26
    puts "Your BMI is perfect :)"
  else
    puts "Your BMI is higher than it's healthy!"
  end
