fname = "Alex"
lname = String.new("David")
age = 20
marks = [96, 92, 88]

puts "fname == 'Alex': #{fname == 'Alex'}"
# true --> same content (all strings are objects, == checks value in Ruby)
puts "lname == 'David': #{lname == 'David'}"
# true --> same content
puts "fname.equal?('Alex'): #{fname.equal?('Alex')}"
# false --> different object (different memory location)
puts "lname.equal? 'David': #{lname.equal?('David')}"
# false --> different object (different memory location)
puts "fname.equal? 'Alex': #{fname.equal?('Alex')}"
# false -->  different object (different memory location)
puts "lname.equal? 'David': #{lname.equal?('David')}"
# false -->  different object (different memory location)

# Immediate types: small integers, small floats, true, false, nil, symbols
puts "age == 20: #{age == 20}"
# true (primitive-like comparison)
puts "age.equal? 20: #{age.equal? 20}"
puts "marks == [96, 92, 88]: #{marks == [96, 92, 88]}"
# true --> checks content
puts "marks.equal? [96, 92, 88] : #{marks.equal?([96, 92, 88])}"
# false --> different object
