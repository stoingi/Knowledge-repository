class Cat
  attr_accessor :name, :breed

  def speak
    puts "Meow! My Name is: #{name}"
  end

  def inspect_collar
    puts "Name: #{name}"
    puts "Breed: #{breed}"
  end
  # def eat(food)
  #   puts "#{name} go and eat #{food}"
  # end
end

class Dog
  attr_accessor :name

  def speak
    puts "Wuff! My Name is: #{name}"
  end
end


#Instanzen der Klasse
cat_a = Cat.new
cat_a.name = "Chilly"
cat_a.breed = "Fluffy old school hair"
cat_b = Cat.new
cat_b.name = "Lilly"
cat_b.breed = "British short hair"
cat_c = Cat.new
cat_c.name = "Ruby"
cat_c.breed = "British long hair"


# puts cat_b.breed
cat_a.inspect_collar
cat_b.inspect_collar
cat_c.inspect_collar
# cat_a.food(banana)



# puts cat_a
# puts cat_b
# puts cat_c

# cat_a.speak

dog_a = Dog.new
dog_a.name = "Jamiro"
dog_a.speak

pets = [
  cat_a, cat_b, cat_c, dog_a
]

pets.each do |pet|
  pet.speak
end


# cat_a.eat(ruby, rat)

# puts cat_a.name

# cat_a.speak
# cat_b.speak
