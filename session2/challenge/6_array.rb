# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime. 
# 
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself. 
# 
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
# 
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

# require 'prime'

# def prime_chars?(str)
# str.join.length.prime?
# end

def prime_chars? (arr)
	i = arr.join.length
	if i < 2
		return false
	else
		for n in 2..i-1
   			return false if i % n == 0
   			true
   		end
   	end
end


# myarray = ["a", "b", "chhhhhh", "dh", "g", "hhhh"]
# p prime_chars? ["a", "b", "chhhhhh", "dh", "g", "hhhh"]
# p prime_chars? ['abc']            # => true
# p prime_chars? ['a', 'bc']        # => true
# p prime_chars? ['ab', 'c']        # => true
# p prime_chars? ['a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c', 'a', 'b', 'c']
# p prime_chars? []
# p prime_chars? [""]
# p prime_chars? ["ab"]




