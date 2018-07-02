print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What city are you from?"
city = gets.chomp
city.capitalize!

print "What state?"
state = gets.chomp
state.capitalize!

print "What's the abbreviation?"
abv = gets.chomp
abv.upcase!


print "Your name is #{first_name} and you live in #{city} #{state} #{abv}!"


print "What's your name?"
name = gets.chomp
name.capitalize!

print "Your name is #{name}"





hungry = true

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end



true || true # => true
true || false # => true
false || true # => true
false || false # => false

!true # => false
!false # => true

# boolean_1 = !true
boolean_1 = false

# boolean_2 = !true && !true
boolean_2 = false

# boolean_3 = !(700 / 10 == 70)
boolean_3 = false

# boolean_1 = (3 < 4 || false) && (false || true)
boolean_1 = true

# boolean_2 = !true && (!true || 100 != 5**2)
boolean_2 = false

# boolean_3 = true || !(true || false)
boolean_3 = true




print "Say a word:"
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
   user_input.gsub!(/s/, "th")
  puts "Transformed #{user_input}"
end


print "Say a word:"
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
   user_input.gsub!(/s/, "th")
   puts "Transformed #{user_input.capitalize}"
else
  print "Please enter a word with s!"
end




for num in 1..20
  puts num
  counter += 1
end



i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end





print "What's the word: "
word = gets.chomp
word.reverse
if word == word.reverse
 print "is true!"
else
  print "it's not true!"
end



print "Say a number:"
user_input = gets.chomp
if user_input > 5
  print "your number is more than 5"
elsif user_input < 5
  print "your number is less than 5"
else
  print "your number is equal to 5"
end



for i in 1..5
  next if i % 2 != 0
  print i
end



i = 5
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i}"
  break if i <= 0
end




	print "Thank you for your interest in the metric system. Please enter a temperature in Fahrenheit "
	amount_of_fahrenheit = gets.chomp.to_i
	print "You have entered #{amount_of_fahrenheit} let me convert that... "
	celcius = amount_of_fahrenheit / 3
	print "It's #{celcius}"


	print "How old are you? "
age = gets.chomp #if I don't add chomps the number gets /n and it's not recognized.
print "And what year are we in? "
year = gets.chomp
birthyear = year - age
print "That means you were born in #{birthyear}"





for num in 1..20
  puts num
end


i = 20
loop do
  i -= 1
  print i
  break if i <= 0
end


# skip even numbers:

  for i in 1..5
  next if i % 2 == 0
  print i
end

# skip odd numbers:

for i in 1..10
  next if i % 2 == 1
  print i
end


# Make sure to use print rather than puts, so your output appears on one line.


array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print x
end


odds = [1,3,5,7,9]
odds.each do |x|
  x * 2
  print x
end


even = [1, 2, 3, 4, 5, 6, 7, 8]
even.each do |x|
  next if x % 2 == 0
  print x
end



20.times {puts "we are the best"}

20.times {print "We are the best\n"}



i = 3
while i > 0 do
  print i
  i -= 1
end


i = 0
while i <= 50 do
  puts i
  i += 1
end


i = 50
while i > 0 do
  puts i
  i -= 1
end


i = 50
until i == 0 do
  print i
  i -= 1
end


for k in 1..50
  print k
end

for num in 1..50
  print num
end


m = 0
loop do
  m += 1
  print "Ruby!"
  break if m == 30
end


30.times {print "Ruby!"}

30.times {print "Ruby!\n"}



#.split; it takes in a string and returns an array.
#If we pass it a bit of text in parentheses, .split will divide the string wherever it sees that bit of text, called a delimiter

puts "Enter some text: "
text = gets.chomp

puts "Enter words to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word == redact
    print "REDACTED "
  else
    print word + " "
  end
end




#new array
my_2d_array = [[]]

my_2d_array = [[], []]

my_array = my_array.new


my_2d_array[0] << 1


#iterate over multidimensional array
my_2d_array = [[1, 2, 3, 4, 5, 6], ["dogs", "cats", "cheetah" "lion"], [true, false, nil]]
puts my_2d_array[1][1]

my_2d_array[0] << 7
my_2d_array[1] << "rat"


my_2d_array.delete_at(0)




my_hash = { "name" => "Eric", "age" => 26, "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]



pets = {
  "dog" => "Zibo",
  "cat" => "Sky",
  "horse" => "Ruby"
  }

puts pets["dog"]
puts pets["cat"]
puts pets["horse


numbers = [1, 2, 3, 4, 5]
numbers.each { |element| puts element }


languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each { |x| puts x }





s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

  s.each do | sub_array |
    sub_array.each do |x|
      puts x
    end
  end




secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do | secret, name |
  puts "#{secret}: #{name}"
end



lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

puts lunch_order["Ryan"]
puts lunch_order["Eric"]
puts lunch_order["Jimmy"]
puts lunch_order["Sasha"]
puts lunch_order["Cole"]





s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array| sub_array.each { |element| puts element }}





print "Put it into my_hash "
answer = gets.chomp
my_hash << answer







frequencies = Hash.new(0)

loop do
	puts "Give me some text: "
	text = gets.chomp.downcase
	words = text.split " "

	words.each do |word|
    frequencies[word] +=1
    end
	break if frequencies.include?("code")
end

puts frequencies