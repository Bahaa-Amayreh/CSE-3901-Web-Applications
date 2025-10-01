# Finding the Index of the First Element Greater Than a Limit in Ruby 
# (Using index and a Custom Method with Block)
limit = 3
arr = [1, 2, 3, 4, 6]
index=arr.index { |x| x > limit }
# block checks each value:
# 1 > 3 --> false
# 2 > 3 --> false
# 3 > 3 --> false
# 4 > 3 --> true  (found!)
# returns index = 3
puts index
#---------------------------------------------------------
def find_index(arr, limit)
  result = nil
  i = 0
  while i < arr.length
    if block_given?
      if yield(arr[i], limit)   # pass both x and limit to the block
        result = i              # store the index
        break
      end
    end
    i += 1
  end
  result
end
arr = [1, 2, 3, 4, 6]
limit = 4
# Block receives two parameters: x (element) and limit
puts find_index(arr, limit) { |x, l| x > l }   # => 4



