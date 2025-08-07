class Person
    
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def introduce
    "Name: #{@name}, Age: #{@age}, Gender: #{@gender}"
  end
end

class Student < Person
  def initialize(name, age, gender, major, year)
    super(name, age, gender)     # Call Person's initialize
    @major = major               # Student-specific instance variable
    @year = year
  end

  def student_info
    "#{introduce}, Major: #{@major}, Year: #{@year}"
  end
end

s1 = Student.new("Maria", 20, "Female", "Computer Science", "Sophomore")
puts s1.student_info
# => Name: Maria, Age: 20, Gender: Female, Major: Computer Science, Year: Sophomore
