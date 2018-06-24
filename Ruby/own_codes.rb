

print "How are you? "
feeling = gets.chomp


print "Where are you? "
location = gets.chomp


puts "What's your name? "
name = gets.chomp
print "Hello #{name}, how are you? "
answer = gets.chomp
print "Hey #{name} why are you feeling #{answer}? "
puts "Well you're doing #{feeling} and you are #{location} right now. You are #{age} so you were born in #{year_born} "



print "How old are you? "
age = gets.chomp.to_i
year_born = 2018 - age


print "What year is it? "
actual_year = gets.chomp.to_i
print "What year are you born? "
year = gets.chomp.to_i
age = actual_year - year
print "You are #{age} years old"


actual_year = 2018
print "What year are you born? "
year = gets.chomp.to_i
age = actual_year - year
print "You are #{age} years old"




puts "Give me a word: "
answer = gets.chomp
if answer.include? "h"
	 puts "includes the letter :)"
   else
    puts "doesn't include the letter :("
  end


	my_2nd_array  = [[1, 2, 3, 4], ["house", "dog", "flower"]]
	my_2nd_array.each {|x|print "#{x}\n"}


	my_2nd_array  = [[1, 2, 3, 4], ["house", "dog", "flower"]]
	my_2nd_array.each do |x|
	  print "#{x}\n"
	end



my_2d_array = [["dog", "cat", "cheetah", "lion"], [0, 1, 2, 3, 4, 5, 6, 7], ["house", "love", "nature", "camping"]]

my_2d_array.each do | sub_array |
	sub_array.each do | x |
		puts x
	end
end



my_array = []
print "1st letter? "
first = gets.chomp
my_array << first

print "2nd letter? "
second = gets.chomp
my_array << second

print my_array






my_hash = {
  "sun" => "is shining",
  "wind" => "is blowing",
  "summer" => "is hot"
}

my_hash.each do | element, condition |
puts "#{element}: #{condition}"
end


my_array = []
puts "Give me a word: "
a = gets.chomp!

puts "Give me another word: "
b = gets.chomp!
puts "and another word: "
c = gets.chomp!





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







my_array = [0, 1, 2, 3, 4, 5, 6]
my_2nd_array = [[0, 1, 2, 3, 4, 5], ["dog", "cat", "bird", "cheetah"]]
my_hash = {"dog" => "zibo", "cat" => "Sky", "Bird" => "Tweetie"}
dictionary = Dictionary.new => {}
my_hash2 = {}
my_array2 = []

print "Put something into array"
answer = gets.chomps
my_array << answer
print "Put it into my_2nd_array"
answer = gets.chomps
my_2nd_array << answer
print "Put it into my_hash"
answer = gets.chomps
my_hash << answer
print "Put it into my_hash2"
answer = gets.chomps
my_hash2 << answer





my_hash = {"dog" => "zibo", "cat" => "Sky", "Bird" => "Tweetie"}
my_hash2 = {}

my_hash << answer
print "Put it into my_hash2 "
answer = gets.chomp
my_hash2 << answer
