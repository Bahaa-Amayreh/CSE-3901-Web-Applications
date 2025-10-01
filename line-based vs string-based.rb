# Line-based --> checks each line individually  
# Result1 --> index first match or nil
text1 = "Hello\nWorld\nHello World"
pattern1 = /^Hello World$/
result1= text1 =~ pattern1
puts result1 # 12

# String-based --> matches entire string exactly
# Result2 --> returns 0 if match, or nil 
text2 = "Hello World"
pattern2 = /\AHello World\z/
result2= text2 =~ pattern2
puts result2 # 0

s = "m:12 d:7 y:2025"
letters = s.scan /[[:alpha:]]/
print letters # ["m", "d", "y"]



