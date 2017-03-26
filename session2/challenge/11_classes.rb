# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.
class BeerSong
	attr_accessor :n
	def initialize(n)
		@n = n
		if n < 0
			@n = 0
		elsif n > 99
			@n = 99
		end
	end
	def english_numbers(n)
		if 0 <= n && n <= 19
      ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"][n]
    elsif n % 10 == 0
      ["zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"][n/10]
    else
      "#{english_numbers n/10*10}-#{english_numbers n%10}".downcase
    end.capitalize
  end
		# n = num
		# singles = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
		# decimals = ["zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  #   	if 0 <= n && n <= 19
  #     		n = singles[n].capitalize
  #   	elsif n % 10 == 0
  #   		n = decimals[n].capitalize
  #   	else
  #     		"#{decimals[n]}-#{singles[n]}".capitalize
  #   	end
    #end
    def bottles(n)
    	if n == 1
    		"bottle"
    	else
    		"bottles"
    	end
    end

	def print_song
		n.downto 1 do |i|
			puts "#{english_numbers(i).to_s} #{bottles(i)} of beer on the wall,", "#{english_numbers(i).to_s} #{bottles(i)} of beer,", "Take one down, pass it around,", "#{english_numbers(i - 1).to_s} #{bottles(i - 1)} of beer on the wall."
		end
	end
end


beer = BeerSong.new(5)
p beer.english_numbers(29)
p beer.print_song

