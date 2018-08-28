#Methods


#puts always the last return value


#Lokale Variablen gewinnen über Methoden:

def a
  42
end

def b
  23
end

def sum(a, b)
  a + b
end

# a = 1
# b = 2

puts sum(1, 5)
puts a
puts b

#output:
6
42
23



puts sum(a, b)
puts a
puts b

#output:
65
42
23



def a
  42
end

def b
  23
end

def sum(a, b)
  a + b
end

a = 1
b = 2

puts sum(a, b)
puts a
puts b

#output:

3
1
2





puts "Please enter your weight (in kg): "
weight = gets.chomp.to_i
puts "Please enter your height (in m): "
height = gets.chomp.to_f

def calculate_bmi(weight, height)
  (weight / height) / height
end

puts calculate_bmi(weight, height)


#oder

def calculate_bmi(w, h)
	(w / h) / h
end






def forty_two
  calculation = 1 + 2
  another_result = 3 * 9
end




def greet(name)
  puts "Hello #{name}"
end

greet("Viola")



def whazz_up(greeting)
  friends.each {|friend| puts "#{greeting}, #{friend}"}
end

whazz_up("Whazz up", "Viola", "Elena", "Damian")




def calc(beaufort)
  beaufort * 3
end

calc(5)






def ask(question)
  puts question
  gets.chomp
end

name = ask("What's your name?")
age = ask("What's your age?")


puts "Hello #{name}"
puts "Your age is #{age}"








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





def compare_age(person1, person2)

  age_person1 = person1["year_died"] - person1["year_born"]

  age_person2 = person2["year_died"] - person2["year_born"]



  if age_person1 < age_person2

    puts "#{person2["name"]} (#{age_person2}) grew older than #{person1["name"]} (#{age_person1})"

  else

    puts "#{person2["name"]} (#{age_person2}) is younger than #{person1["name"]} (#{age_person1})"

  end

end


compare_age(picasso, kant)
compare_age(kant, beethoven)







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




def generate_code(number)
  charset = Array('A'..'Z') + Array('a'..'z')
  Array.new(number) { charset.sample }.join
end

puts generate_code(20)


def silly_check(number)
  if number < 5
    return("The number is less than 5")
  else
    return("The number is greater than or equal to 5")
  end
end

def silly_check()
  puts "Please tell me a number:"
  number = gets.chomp.to_i
  if number <= 5
    puts "The number ist less than 5"
  else
    puts "The number is higher than 5"
  end
end




my_array = ["blah monster"]
def funify(array)
  array << "Fun"
end

puts funify(my_array)



my_array = ["blah monster"]
def funify(array)
  return(array.push("fun"))
end

puts funify(my_array)




my_array = ["having", "fun"]

def more_fun(my_array)
  my_array[0] = "Fun fun"
end

puts more_fun(my_array)



my_array = ["having", "fun"]

def more_fun(my_array)
  my_array[0] = "Fun fun"
  return(my_array)
end

puts more_fun(my_array)

# more_fun(my_array).each do
#   puts my_array
# end



def increment_variable(age)
  new_age = age +=1
end

puts increment_variable(41)





class Entry
attr_accessor :food, :calories, :category

  def  initialize(food, calories, category)
    @food = food
    @calories = calories
    @category = category
  end

end

pizza = Entry.new("pizza", 1000, "unhealthy")
puts pizza.food
puts pizza.calories
puts pizza.category



Der attr_accessor macht dasselbe, 

attr_accessor :food, :calories

wie der Code hier:

def food
  @food
end 

def calories
  @calories
end

def food=(food)
  @food = food
end 

def calories=(calories)
  @calories = calories
end 


Nur Lesen:

attr_reader :food, :calories

def food
  @food
end 

def calories
  @calories
end


Nur Schreiben:

attr_writer :food, :calories

def food=(food)
  @food = food
end 

def calories=(calories)
  @calories = calories
end 
