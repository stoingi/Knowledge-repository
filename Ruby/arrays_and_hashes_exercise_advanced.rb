my_array = [0, 1, 2, 3, 4, 5, 6]
my_2d_array = [[0, 1, 2, 3, 4, 5], ["dog", "cat", "bird", "cheetah"]]

puts "Put something into array: "
answer = gets.chomp
my_array << answer

my_array.each {|x| puts x }



my_hash = {"dog" => "zibo", "cat" => "Sky", "Bird" => "Tweetie"}
dictionary = {}
my_hash2 = {}
my_array2 = []

puts "Put something into array"
answer = gets.chomp
my_array << answer

puts "Put it into my_2nd_array"
answer = gets.chomp
my_2nd_array << answer
puts "Put it into my_hash"
answer = gets.chomp
my_hash["answer"]
puts "Put it into my_hash2"
answer = gets.chomp
my_hash2[answer]



my_hash.each {|x| puts x }


my_hash.each do |x|
print x[0]
end
