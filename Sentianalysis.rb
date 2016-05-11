require 'rubygems'
require 'json'
require 'sentimental'

a=[]
from_file = ARGV.first

indata = open(from_file).read

#JSON Parser 
json = JSON.parse(indata)

json["user_reviews"].each do |user_reviews|
	a.push(user_reviews["review"]["review_text"])
end

analyzer = Sentimental.new 

#analyzer.threshold = 1

analyzer.load_defaults

a.push("I just completely hate this place.")

a.each do |a|
	puts a
	puts "\v"
	puts analyzer.sentiment a
	puts "\v"
	puts analyzer.score a
	puts "\v"
end


