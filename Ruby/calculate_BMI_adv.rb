#This program helps to convert your weigth to BMI

#Metric BMI Formula; BMI = weight (kg) ÷ height2 (m2)
#[60 : (1,6 m)2 = 23,4].

  puts "What is your weight? "
  weight = gets.chomp.to_i
  puts "What is your heigth in meters? "
  height = gets.chomp.to_f
  BMI = weight / (height**2)
  puts "Well you weight #{weight} kilograms and you are #{height} meters tall and your BMI is:#{BMI}"
  if BMI <= 15
    puts "You've go very severly underweight"
  elsif BMI >= 15 && BMI <= 16
      puts "You've got severly underweight"
  elsif BMI >= 16 && BMI <= 18.5
    puts "You've got underweight"
  elsif BMI >= 18.5 && BMI <= 25
    puts "You have a healthy weight"
  elsif BMI >= 25 && BMI <= 30
    puts "You have overweight"
  elsif BMI >= 30 && BMI <= 35
    puts "You've got obese class 1"
  elsif BMI >= 35 && BMI <= 40
    puts "You've got obese class 2"
    elsif BMI >= 40
    puts "You've got obese class 3"
  end
