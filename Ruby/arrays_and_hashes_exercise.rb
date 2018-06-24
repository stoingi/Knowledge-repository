my_array = [0, 1, 2, 3, 4, 5, 6]
my_2nd_array = [[0, 1, 2, 3, 4, 5], ["dog", "cat", "bird", "cheetah"]]
my_hash = {"house" => "chalet", "country" => "Namibia", "climate" => "dry"}



puts "Put something into array: "
answer = gets.chomp
my_array << answer
puts "Put it into my_2nd_array"
answer2 = gets.chomp
my_2nd_array[0, 1] << answer2
puts "Put it into my_hash"
answer = gets.chomp
my_hash["answer"]



my_array.each {|x| print x }

my_2nd_array.each { |y| puts y }

my_hash.each_value {|value| puts value }
