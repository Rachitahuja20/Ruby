
input_file = ARGV.first

current_file = open(input_file)
words = []

current_file.each_line do |f|
		words.push(f)
	end

def chooseword(w)
	number = w.length
	ch = rand(0...number)
	
	word = w[ch]
	return word
end

puts "Want to play Hangman? (y/n)"
resp = $stdin.gets.chomp

if resp == 'y'
	word = chooseword(words)

else 
	puts "WTF!"
end

puts "#" * 10 + "Let's start the game!" + "#" * 10


blanks = (word.length * 0.3).round

i = 0
rando = []

while i < blanks  
	l = (rand(0..word.length-1))
	c = rando.include? l
	if  c == false
		rando.push(l)
		
		i+=1

	else 
		i+=1
		
	end
end

num = word.dup
check = word.dup

def blankgen(rando, num)
	cum = num
	rando.each do |x|
		cum[x] = '-'
	end
	return cum
end

hang = []
hang1 = ['H', 'A', 'N', 'G', 'M', 'A', 'N'].reverse


	
def put(check, num, rando, hang, hang1)
	flag = 0
	j=0
	z=0
	rev=0

	puts "Word is #{check}"
	puts "Guess is #{num}"

	begin
		puts "Please enter the letter"
		letter = $stdin.gets.chomp

		rando.each do |x|

			m = check[x].include? letter
			if m == true
				num[x] = letter 
				flag+=1
				rev+=1
			else 
					flag-=1
					

			end
		end
		puts num

		if flag < 0 && rev == 0 
			hang[j] = hang1.pop
				j+=1
				puts hang
		end
		z+=1
		flag = 0
		rev = 0

		if check == num
			puts "You WON!!!!!"
			break


		end
	end while hang.length < 7
	return hang
end

cum = blankgen(rando, num)
put(check, cum, rando, hang, hang1)

if hang.length > 6
	puts "You LOOSE!! HANGMAN"
else puts "Yipeee!!!!"
end
