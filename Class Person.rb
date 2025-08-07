class Person
    # automatically creates getter for @name, @age, @ id and gender
    attr_reader :name, :age, :id, :gender
     # automatically creates setter for @name, and gender
      attr_writer :name, :gender
    def initialize(name, age, id, gender)
        @name=name 
        @age=age   
        @id=id
        @gender=gender
    end

    def toString
        puts "Name:#{@name}, Age:#{@age}, ID:#{@id}, Gender=#{@gender}" 
    end 

  end #=>end of class Person
  
  person = Person.new("Baha", 37, 482, 'male')
  puts person.name   #=>Baha
  puts person.id     #=>482
  puts person.age    #=>37
  puts person.gender #=>male
  # we can access and modify instance variables name and gender only
  person.name="Maria" 
  person.gender="female"
  puts person.toString #=> Name:Maria, Age:37, ID:482, Gender=female
  # person.age=35 #=>undefined method `age=' for #<Person:...>