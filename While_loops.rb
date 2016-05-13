i = 0 
numbers = []

while i < 6
  puts "at the top i is #{i}"
  numbers << i

  i += 1 

  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: ", numbers

#numbers.each {|num| puts num }

