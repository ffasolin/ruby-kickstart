# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? (array)
	array.each_cons 3 do |elem1, elem2, elem3|
		return true if (elem1 == elem2) && (elem2 == elem3)
		end
		false
end

p got_three? [1, 2, 2, 2, 3]  # => true
p got_three? ['a', 'a', 'b']  # => false
p got_three? ['a', 'a', 'a']  # => true
p got_three? [1, 2, 1, 1]     # => false