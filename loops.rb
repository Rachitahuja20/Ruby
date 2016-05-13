the_count = [1,2,3,4,5]
fruits = ['apples', 'Oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages

for number in the_count
  puts "This is count #{number}"
end

# same as above, but in a more Ruby style
# this and the next one are the preferred 
# way Ruby for-loops are written

fruits.each do |fruit|
  puts "A fruits of type #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax (way to write it).

change.each {|i| puts "I got #{i}"}

# We can also build the lists, first start with an empty one
elements = []

# .. are used for inclusive and ... are used for not including last like 5 in the down example
(0..5).each do |i|
  puts "adding #{i} to the list."
  elements.push(i)   # We can also do elements << i like C++
end 

elements.each {|i| puts "Element was : #{i}"}
