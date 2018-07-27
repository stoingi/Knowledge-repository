class Cat
  attr_accessor :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def speak
    puts "Meow! My Name is: #{name}"
  end

  def inspect_collar
    puts "Name: #{name}"
    puts "Breed: #{breed}"
  end

  def eat(food)
    puts "#{name} go and eat some #{food}"
  end
end

cat_a = Cat.new('Chilly', 'Fluffy old school hair')
# cat_a.name = "Chilly"
# cat_a.breed = "Fluffy old school hair"
cat_b = Cat.new('Lilly', 'American short hair')
cat_c = Cat.new('Ruby', 'British long hair')

cat_a.inspect_collar
cat_b.inspect_collar
cat_c.inspect_collar

cat_a.eat('rats')
cat_b.eat('dogs')
