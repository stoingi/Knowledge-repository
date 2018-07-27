

class Employee
  attr_accessor :name, :age, :yearly_salary, :gender

  def initialize(name, age, yearly_salary, gender)
    @name = name
    @age = age
    @yearly_salary = yearly_salary
    @gender = gender
  end

  def age_by_one_year
    @age +=1
    if @gender == "male"
      employee_retirement = 65
    else
      employee_retirement = 64
    end

    if @age < employee_retirement
      puts "Your tooo young"
      false
    else
      puts "You've reached the retirement age"
      true
    end
  end

end

employee1 = Employee.new("Roli", 41, 200000, "male")
employee2 = Employee.new("Viola", 42, 150000, "female")



  # puts employee1.name
  # puts employee1.age
  # puts employee2.yearly_salary
  # puts employee2.gender



# puts employee1.age_by_one_year
# puts employee1.age

# loop do
#   employee1.age_by_one_year
# end

loop do
  break if employee1.age_by_one_year == true
end
