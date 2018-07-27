array = ["a", "b", "c", "d", "e"]

puts array.first

class Array
  def second
     self[1]
  end
end

puts array.second
