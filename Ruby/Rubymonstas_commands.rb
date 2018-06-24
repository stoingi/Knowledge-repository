In object-oriented programming languages “ideas” are called classes. And actual “things” are called objects.

Anyhow, you can take away from all of this that those universes that we create when we write programs
will be populated by objects (“things”), and their characteristics are defined by classes (“types of things”, or “ideas”).





irb(main):001:0> a = 5
=> 5
irb(main):002:0> b = "Hello World"
=> "Hello World"

Naming Conventions
● Small letters
● No white space
● If the variable name has several words, use
underscore
● Cannot start with a number


good example:
list_of_favourite_drinks



irb(main):001:0> a = 5
=> 5
irb(main):003:0> a + 4
=> 9
irb(main):004:0> b.length
=> 11



irb(main):003:0> a + 4
=> 9
irb(main):004:0> b.length
=> 11


If you assign a new object to the same
variable, the new object is valid
irb(main):002:0> b = "Hello World"
=> "Hello World"
irb(main):005:0> b = "Another String"
=> "Another String"



Variables can be assigned to other variables
irb(main):001:0> a = 5
=> 5
irb(main):006:0> x = a
=> 5


“puts” is used to display the results of Ruby
code
irb(main):008:0> puts "We print a string"
We print a string
=> nil
irb(main):009:0> puts b
Another String
=> nil


“gets” is used to get user input
irb(main):010:0> name = gets
Marion
=> "Marion\n"
irb(main):011:0> name
=> "Marion\n"





Bad/invalid variable names
●
5_things
●
mynewvariable
●
AnotherVariableName



Boolean values
●
The truth!
○ true
○ false


Functions (methods) can return booleans
irb(main):013:0> "Ruby is great".include? "Ruby"
=> true
irb(main):014:0> "This is great".include? "Ruby"
=> false
irb(main):016:0> 1.odd?
=> true
irb(main):017:0> 3.even?
=> false



Ruby code convention: Functions that return a boolean value end with a ?
irb(main):023:0> b
=> "Another String"
irb(main):024:0> b.empty?
=> false
irb(main):026:0> x
=> 5
irb(main):027:0> x.integer?
=> true




Booleans and variables

irb(main):011:0> b_is_empty = b.empty?
=> false
irb(main):012:0> b_is_empty
=> false
irb(main):013:0>




Comparison operators
== Are the left and right side equal?
!= Are the left and right side not equal?
<Is the left side smaller than the right side?
> Is the left side bigger than  the right side?
<= Is the left side smaller than or equal to the right side?
>= Is the left side bigger than or equal to the right side?


irb(main):074:0> 5 == 4
=> false
irb(main):075:0> 5 != 4
=> true
irb(main):076:0> 1 < 2
=> true
irb(main):077:0> 1 > 2
=> false
irb(main):078:0> 7.1 <= 7.2
=> true
irb(main):079:0> 7.1 >= 7.2
=> false


Arrays

● lists of things
irb(main):036:0> [1, 1, 3, 5, 8]
=> [1, 1, 3, 5, 8]
irb(main):038:0> my_array = [7, "hello", 5.9]
=> [7, "hello", 5.9]


Accessing array items

irb(main):043:0> my_array = [7, "hello", 5.9]
=> [7, "hello", 5.9]
irb(main):044:0> my_array[1]
=> "hello"
irb(main):045:0> my_array.last
=> 5.9
irb(main):046:0> my_array.first
=> 7



Adding to an array

● “shovel” operator
irb(main):039:0> my_array << "new item"
=> [7, "hello", 5.9, "new item"]
irb(main):041:0> my_array << x
=> [7, "hello", 5.9, "new item", 5]


Deleting from an array
irb(main):055:0> my_array
=> [7, "hello", 5.9, "new item", 5]
irb(main):056:0> my_array.delete_at(2)
=> 5.9
irb(main):057:0> my_array
=> [7, "hello", "new item", 5]
irb(main):058:0> my_array.delete("hello")
=> "hello"
irb(main):059:0> my_array
=> [7, "new item", 5]


my_array1.clear



gets.chomp.to_i  (converts string into integer)
gets.chomp.to_f (converts string into float)



my_array = []
print "Tell me the name of your pet: "
petname = gets.chomp
my_array << petname
print "Tell me the name of your friend: "
friends_name = gets.chomp
my_array << friends_name

my_array.each do |x|
  print x.chars.first
end


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



my_array = []
print "Tell me the name of your pet: "
petname = gets.chomp
my_array << petname
print "Tell me the name of your friend: "
friends_name = gets.chomp
my_array << friends_name
print my_array.first.chars





irb(main):001:0>    255345.round(-1)
=> 255350
irb(main):002:0>    255345.round(-2)
=> 255300
irb(main):003:0>    255345.round(-3)
=> 255000
irb(main):004:0>    255345.round(-4)
=> 260000
irb(main):005:0>    255345.round(-5)
=> 300000



irb(main):006:0> 109.succ
=> 110
irb(main):007:0> 109.succ.succ
=> 111
irb(main):008:0> 109.succ.succ.succ
=> 112
irb(main):009:0> 109.pred
=> 108
irb(main):010:0> 109.pred.pred
=> 107



1.  a = [1, 2, 3]
2.  a[1]
3.  a << 4   or   a[1] = 4

1. h = {"A" => 2, "B" => 2, "C" => 3}
2. h["A"]
3. h["E"] = "F"


1. initialization
2. read
3. write
