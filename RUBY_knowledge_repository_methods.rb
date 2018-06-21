#Methods


#puts always the last return value

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
  puts ("How many beaufort?)
  beaufort = gets.chomp
  beaufort * 3
end

calc(5)



def




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
