# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""







class String
	# def initialize (string)
	# 	@string = string
	# end
	# attr_accessor :string
  def every_other_char
  	new_string = ""
  	new_array = split("")
  	new_array.length.times do |i|
  		if i.even?
  			new_string << new_array[i]
   		end
  	end
  	new_string
  end
end

example = String.new ("abcdefg")
puts example.every_other_char
example1 = String.new ("")
puts example1.every_other_char