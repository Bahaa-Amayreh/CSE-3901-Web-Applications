# Array Initialization: Shared vs. Independent References in Ruby

a = Array.new(5).fill([]) # same object for all elements --> shared reference
a[2] << 100
print a  # => [[100], [100], [100],[100], [100]]
puts "\n----------------------------------------------"
a = Array.new(3).fill { |_| [] }  # Each element has its own reference
a[0] << 1                         # Modifying one element does not affect the others.
print a  # => [[1], [], []]
