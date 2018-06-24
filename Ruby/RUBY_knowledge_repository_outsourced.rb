
.reverse
.capitalize
.downcase
.upcase

.empty?
.uniq
.duplicate


my_array.count
my_array.last
my_array.first
my_array[0]
my_array.insert(2, 8)

my_hash.has_key?("test")
my_has.has_value?(3)

.class

.chars
.chars.last
.chars.first

.odd?
.even?

.round
.succ
.pred


.length
.include?
.empty?
.

5.times { puts "Hello world" }



.max    biggest number


gets.chomp.to_i  (converts string into integer)
gets.chomp.to_f (converts string into float)


to_s    converts values to strings.
to_i    converts values to integers (numbers.)
to_a    converts values to arrays.


:symbol   => class symbol (konstante)


#empty string
string = " "
#add to string
string << "a"

#but if you add an integer it appends the hexadecimal value to string
#you have to convert to string

irb(main):004:0> string << 2
=> "a\x02"






#variable naming conventions
● Small letters
● No white space
● If the variable name has several words, use
underscore
● Cannot start with a number


Dir["/*.tx­t"]
print File.­read("/com­ics.txt")

File.open("/Home/comics.txt")

File.read("/Home/comics.txt")

File.mtime("/Home/comics.txt")
File.mtime("/Home/comics.txt").hour




#Escape sequences

#Below are some of the more common escape sequences that can appear inside of double quotes.

    # \" – double quote
    # \\ – single backslash
    # \a – bell/alert
    # \b – backspace
    # \r – carriage return
    # \n – newline
    # \s – space
    # \t – tab


#Try out this example code to better understand escape sequences.

puts "Hello\t\tworld"

puts "Hello\b\b\b\b\bGoodbye world"

puts "Hello\rStart over world"

puts "1. Hello\n2. World"

The result:

$ double-quotes.rb
Hello		world
Goodbye world
Start over world
1. Hello
2. World


#Blocks

list_of_things.each { |x| puts x}

list_of_things.each do |x|
  puts x
end


#Loops

counter = 1
loop do
  counter += 1
    puts counter
  break if counter == 3
end



counter = 1
loop do
  counter += 1
    puts counter
      if counter > 3
      break
    end
end




#new array
list_of_things = []

#or
list_of_things = [1, 2, 3, true, false, "computer", "mouse"]



my_array.count
my_array.last
my_array.first
my_array.uniq
my_array[0]


my_array = [0, 1, 2, 3, 4, 5, 6]
i = 3
irb(main):044:0> my_array[i]
=> 3



#add to array
list_of_things << "network"
my_array.insert(4, 5)


#iterate over array
my_array[1]
my_array["string"]


#delete whole array
my_array.clear


#delete within array
my_array.delete_at(5)
my_array.delete_at(-3)
my_array.delete("house")


#output
my_array.each {|x| print x }

my_2nd_array.each { |y| puts y }


#Multidimension arrays

my_2d_array = [[]]
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

#iterate
s[0][1]

s.each do |sub_array|
  sub_array.each do |y|
    puts y
  end
end



#Hashes

#new Hash
de_es_dic = {}
de_es_dic = Hash.new
weather_conditions = {}
weather_conditions = Hash.new


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


#add to hash
de_es_dic["Server"] = "servidor"
weather_conditions["Helsinki"] = 13
weather_conditions["Auckland"] = 25


#change value of Hash
weather_conditions["Auckland"] = 22



#delete key/value
de_es_dic.delete("Computer")




weather_conditions.has_key?("Helsinki")
weather_conditions.has_value?(25)



puts de_es_dic("Computer")

de_es_dic.each_value {|value| puts value }

de_es_dic.each_key {|key| puts key }


secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |hero, name|
  puts "#{hero}: #{name}"
end


grades = {"Anna" => 5, "Louis" => 3, "Luana" => 6}

grades.each do |name, grade|
  puts "#{name}: #{grade}"
end






1.  a = [1, 2, 3]
2.  a[1]
3.  a << 4   or   a[1] = 4

1. h = {"A" => 2, "B" => 2, "C" => 3}
2. h["A"]
3. h["E"] = "F"


1. initialization
2. read
3. write




poem.lines.to_a.reverse.join




    Exclamation Points. Methods may have exclamation points in their name, which just means to impact the current data, rather than making a copy. No big deal.
    Square Brackets. With these, you can target and find things. You can even replace them if necessary.
    Chaining methods lets you get a lot more done in a single command. Break up a poem, reverse it, reassemble it: poem.lines.to_a.reverse.join.









    def beaufort_knots(beaufort_value)
      beaufort_value * 3
    end

    beaufort_max = true

    while beaufort_max == true
      puts "Enter the Beaufort value: "
      input = gets.chomp.to_i

      knots = beaufort_knots(input)

      puts knots
      break if input > 12
    end








#Methods
def greet(name)
  puts "Hello #{name}"
end

greet("Viola")




beethoven = {"name" => "Beethoven", "year_born" => 1770, "year_died" => 1827}
kant = {"name" => "Kant", "year_born" => 1750, "year_died" => 1804}


age_beethoven = beethoven["year_died"] - beethoven["year_born"]
age_kant = kant["year_died"] - kant["year_born"]
if age_beethoven < age_kant
  puts "Kant grew older"
else
  puts "Beethoven grew older"
end





beethoven = {"name" => "Beethoven", "year_born" => 1770, "year_died" => 1827}
kant = {"name" => "Kant", "year_born" => 1724, "year_died" => 1804}

def compare_age(person1, person2)
  if person1["year_born"] < person2["year_born"]
    puts "#{person1["name"]} is older than #{person2["name"]}"
  else
    puts "#{person1["name"]} is younger than #{person2["name"]}"
  end
end

compare_age(beethoven, kant)






def what_up(greeting, *friends)
      friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Viola", "Angie", "Zenas", "Eleanor")



def whazz_up(greeting, *friends)
  friends.each {|friend| puts "#{greeting}, #{friend}"}
end

whazz_up("Whazz up", "Viola", "Elena", "Damian")


def newsletter(*receipients, inhalt)
  receipients.each {|receipients| puts "#{receipients}, #{inhalt}"}
end

newsletter("Viola", "Biography", "Photography")





db_name = {
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
answer = gets.chomp

answer.chars.each do |letter|
  digit = db_name[letter].to_s
  pw << digit
end

puts pw



#or
answer.chars.each do |letter|
  digit = db_name[letter]
  pw << digit.to_s
end

puts pw
