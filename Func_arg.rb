#This one is like your scripts with ARGV 
	
def print_two(*args)
	arg1, arg2 = args

	puts "arg1: #{arg1}, arg2 : #{arg2}"

end

#Ok, that *args is actually pointless, we can just do this

def print_two_again(arg1, arg2)
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

#This takes one argument
def print_one(arg1)
	puts "arg1: #{arg1}"
end

#this one takes no argumanet 
def print_none()
	puts "I got nothing" 
end


print_two("Zed", "Shaw")
print_two_again("Zed","Shaw")
print_one("One")
print_none()
