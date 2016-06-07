#Create a mapping of state to abbreviation 
states = {
	'Oregan' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI'
}

#create a basic set of states and some cities in them
cities = {
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}

#add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

#puts out some cities
puts '-' * 10
puts "NY state has: #{cities['NY']}"
puts "OR state has: #{cities['OR']}"

#puts some states 
puts '-' * 10
puts "Michigan's abbreviation is #{states['Michigan']}"
puts "Florida's abbreviation is #{states['Florida']}"

#Do it by using the states then cities dict 
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

#puts every state abbreviaton

puts '-' * 10

states.each do |state, abbrev|
	puts "#{state} is abbreviated with #{abbrev}"
end

#puts every city in state 
puts '-' * 10
cities.each do |abbrev, city|
	puts "#{abbrev} has city #{city}"
end

#now do bothat the same time
states.each do |state, abbrev|
	city = cities[abbrev]
	puts "#{state} is abbreviated #{abbrev} and has the city #{city}"
end


puts '-' * 10
#By default ruby says "nil" when something isn't there
state = states['Texas']

if !state
	puts "sorry, no Texas"
end

#default values using ||= with the nil result
city = cities['TX']
city ||= "Does not exist"
puts "The city for the state 'Tx' is: #{city}"
