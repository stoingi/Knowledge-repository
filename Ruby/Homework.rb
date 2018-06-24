irb(main):002:0> a = "Ruby is"
irb(main):005:0> b = " great"
=> " great"
irb(main):006:0> a + b
=> "Ruby is great"


irb(main):001:0> a = 42
=> 42
irb(main):002:0> a
=> 42
irb(main):003:0>



irb(main):009:0> a.class
=> String
irb(main):010:0> b = 42
=> 42
irb(main):011:0> b.class
=> Integer
irb(main):012:0> c = 41
=> 41
irb(main):013:0> c.class
=> Integer
irb(main):014:0> d = 4.1
=> 4.1
irb(main):015:0> d.class
=> Float
irb(main):016:0> a = "42"
=> "42"
irb(main):017:0> puts a
42
=> nil


Variables:

F = (C x 2) + 30

Another simple conversion method from C to F is to double the celsius,
subtract 10%, add 32. For example: 100C = 2x100=200,200-20=180,add 32=212F

celcius = ((amount_of_fahrenheit * 2 / 100 * 10) +32)




	print "Thank you for your interest in the metric system. Please enter a temperature in Fahrenheit "
	amount_of_fahrenheit = gets.chomp.to_i
	print "You have entered #{amount_of_fahrenheit} let me convert that... "
	celcius = amount_of_fahrenheit / 3
	puts "It's #{celcius}" celcius."



	print "Thank you for your interest in the metric system. Please enter a temperature in Celcius "
	amount_of_celcius = gets.chomp.to_i
	print "You have entered #{amount_of_celcius} let me convert that... "
	fahrenheit = (amount_of_celcius * 2) + 30
	print "It's #{fahrenheit} fahrenheit!\n"
	puts "It's " + celcius + " celcius."





Booleans:

irb(main):002:0> 3 < 5
=> true
irb(main):001:0> "1" == 1
=> false


print "What's the word: "
word = gets.chomp
word.reverse!
if word == word.reverse
 print "is true!"
else
  print "it's not true!"
end

puts "What's the word? "
word = gets.chomp
word.reverse!

if word == word.reverse
puts "well done it's equal"
else
  puts "try again"
end



Arrays:

1. Write a program that lets the user input 3 strings. Save those strings in an array. Then print the first
letter of each of the strings

my_array = []
puts "Give me a word: "
a = gets.chomp
my_array << a
puts "give me another word: "
b = gets.chomp
my_array << b
puts "and another one: "
c = gets.chomp
my_array << c


my_array.each do |x|
	puts x.chars.first
end


#oder

	puts x[0]




2. Find out how to do each of these things with an array (by googling or looking it up in the Ruby
documentation):
a. delete all elements in the array

my_array1.clear


b. turn around the order of the elements in the array



c. sort the array

my_array1.shuffle


d. randomise the order of the array

my_array1.shuffle!


e.

my_array1.uniq!




Optional part:

1. How can you turn the string "what is happening?" into "?gnineppah si tahW"

print "What is happening".reverse

gnineppah si tahW



2. How can you copy a directory with all it’s content?



3. What does the chomp in gets.chomp do?  (nirgens erklärt)

chomp removes the new line. Actually what chomp does, is removing the Enter character at the end of your string.
(wann benötigt man new line?)

gets.chomp.to_i  (converts string into integer)



4. What’s the difference between array methods with or without exclamation mark? For example shuffle 	vs. shuffle!
​
 To figure this one out, try assigning the result to a variable.

 irb(main):003:0> my_array = [7, "he
=> [7, "hello", 5.9]
irb(main):004:0> my_array.shuffle
=> [7, 5.9, "hello"]
irb(main):005:0> my_array.shuffle
=> ["hello", 5.9, 7]
irb(main):006:0> my_array.shuffle
=> [5.9, 7, "hello"]
irb(main):007:0> my_array.shuffle
=> ["hello", 5.9, 7]
irb(main):008:0> my_array.shuffle!
=> [5.9, 7, "hello"]
irb(main):009:0> my_array.shuffle!
=> [5.9, 7, "hello"]
irb(main):010:0> my_array.shuffle!
=> [7, "hello", 5.9]
irb(main):011:0> my_array.shuffle!
=> [5.9, 7, "hello"]
irb(main):012:0> my_array.shuffle!
=> [5.9, "hello", 7]
irb(main):013:0> my_array.shuffle!
=> [7, 5.9, "hello"]
irb(main):014:0>
irb(main):015:0* my_array.shuffle!
=> ["hello", 5.9, 7]
irb(main):016:0> my_array.shuffle!
=> [7, "hello", 5.9]
irb(main):017:0> my_array.shuffle!
=> [5.9, 7, "hello"]
irb(main):018:0> my_array.shuffle!
=> [7, "hello", 5.9]
irb(main):019:0>


#SESSION 3

#1. Recap previous sessions:

#This program helps to convert your weigth to BMI

#Metric BMI Formula; BMI = weight (kg) ÷ height2 (m2)
#[60 : (1,6 m)2 = 23,4].

print "What is your weight? "
weight = gets.chomp.to_i
print "What is your heigth in meters? "
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



#2. Write a program that lets the user input 3 strings. Save those strings in an array. Then
#print the first letter of each of the strings

personal_information = []
puts "Please tell me your age: "
age = gets.chomp
personal_information << age
puts "Please tell me your name: "
name = gets.chomp
personal_information << name
puts "Please tell me your sex: "
sex = gets.chomp
personal_information << sex

personal_information.each do |x|
  puts x.chars.first
end


#3.

list_of_drinks = ["wine", "beer", "cocktail", "spirits"]
list_of_drinks.sort!
print list_of_drinks


list_of_drinks = ["wine", "beer", "cocktail", "spirits"]
list_of_drinks.shuffle!
print list_of_drinks


list_of_drinks = ["wine", "beer", "cocktail", "spirits"]
list_of_drinks.uniq!
print list_of_drinks


#String interpolation

#2.supresses A because of carriage return \r

irb(main):001:0> puts "A\rB"
B
=> nil


#Hashes

#A Hash is a dictionary-like collection of unique keys and their values.
#Also called associative arrays, they are similar to Arrays,
#but where an Array uses integers as its index, a Hash allows you to use any object type.

spanish_dictionary = {}

spanish_dictionary = {
  "Computer" => "ordenador",
  "Netzwerk" => "Red"
}

puts spanish_dictionary["Netzwerk"]



de_en_dic = {
"Computer" => "ordenador",
"Netzwerk" => "Red",
"Netzwerkverbindung" => "conexión de red",
"Verbindung" => "conexión",
"Problem" => "Problema",
"fehlen" => "falta",
"Fehler" => "error"
}
puts de_en_dic["Computer"]
puts de_en_dic["Netzwerk"]



irb(main):010:0> puts de_en_dic["Computer"]
ordenador
=> nil
irb(main):011:0> puts de_en_dic["Netzwerk"]
Red
=> nil
irb(main):012:0> puts de_en_dic["Netz"]

=> nil

#new Hash

de_es_dic = {}

#or

de_es_dic = {
"Computer" => "ordenador",
"Netzwerk" => "Red",
"Netzwerkverbindung" => "conexión de red",
"Verbindung" => "conexión",
"Problem" => "Problema",
"fehlen" => "falta",
"Fehler" => "error"
}



#delete Hash

de_es_dic.delete("Computer")

#Display keys or values of a Hash
puts de_es_dic["Computer"]

de_es_dic.each_value { |value| puts value }

de_es_dic.each_key { |key| puts key }



#delete all elements in an arrays
my_array.clear

#turn around order of arrays
my_array.shuffle
my_array.sort


weather_conditions = {}
weather_conditions["Rome"] = 30
weather_conditions["Helsinki"] = 13
weather_conditions["Auckland"] = 22

#change value of Hash
weather_conditions["Auckland"] = 25


weather_conditions.has_key?("Helsinki")
weather_conditions.has_value?(25)


#Session 4

#1.

puts "What's your name? "
name = gets.chomp
puts "Hello #{name.capitalize}"


#2.

mushroom_count = {"Marion" => 6, "Fabian" => 5, "Ollie" => 8}
mushroom_count.each_key {|key| puts key}


#number guessing game

until winner == true
#or
while winner == false


secret_number = rand(10)
puts "Please enter a number between 0 and 10"
	secret_number_guess = gets.chomp.to_i
	if secret_number_guess == secret_number
		puts "You've got it"
	elsif secret_number_guess < secret_number
		puts "The number is greater than yours"
	elsif secret_number_guess > secret_number
		puts "The number is smaller than yours"
	end



secret_number = rand(10)
puts secret_number

puts "Please enter a number between 0 and 10"
secret_number_guess = gets.chomp
if secret_number_guess == secret_number
	puts "You've got it"
elsif secret_number_guess < secret_number
	puts "The number is greater than yours"
elsif secret_numer_guess > secret_number
	puts "The number is smaller than yours"
end






secret_number = rand(10)
puts secret_number

puts "Please enter a number between 0 and 10"
secret_number_guess = gets.chomp.to_i
    if secret_number_guess < secret_number
    puts "The number is greater than yours"
    elsif secret_number_guess > secret_number
    puts "The number is smaller than yours"
    elsif secret_number_guess == secret_number
    puts "Congratulations, you've got it"
  end





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
