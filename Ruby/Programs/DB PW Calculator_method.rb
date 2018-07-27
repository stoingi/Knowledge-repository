
MATRIX = {
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


def create_db_name(letters)
  pw = ""
  letters.chars.each do |character|
    digit = MATRIX[character]
    digit = digit.to_s
    pw << digit
  end
  # return pw
  pw
end

puts create_db_name()
