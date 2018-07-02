matrix = {
  "a" => 2,
  "b" => 2,
  "c" => 2,
  "d" => 3,
  "e" => 3,
  "f" => 3,
  "g" => 4,
  "h" => 4,
  "i" => 4,
  "j" => 5,
  "k" => 5,
  "l" => 5,
  "m" => 6,
  "o" => 6,
  "p" => 6,
  "q" => 7,
  "r" => 7,
  "s" => 7,
  "t" => 8,
  "u" => 8,
  "v" => 8,
  "w" => 9,
  "x" => 9,
  "y" => 9,
  "z" => 9}
pw = ""

puts "What's the name of the DB? "
db_name = gets.chomp

db_name.chars.each do |letter|
  digit = matrix[letter]
  pw << digit.to_s
end

puts pw
