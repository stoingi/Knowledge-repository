#Classes



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
