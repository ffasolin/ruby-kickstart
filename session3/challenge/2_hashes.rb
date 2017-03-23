# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase (i)

# 	for n in 1..i
# 	h = Hash.new
# 	if n.odd?
# 		par = []
# 		for n in 1..i
# 			if n.even?
# 				par << n
# 			end
# 		end
# 		h[n] = par
# 	end
# 	h
# end
# end
h = Hash.new
	for n in 1..i
		if n.odd?
			eveni = []
			for d in 1..n
				if d.even?
					eveni << d
				end
			end
			h[n] = [eveni].flatten
		end
	end
	h
end
# 		eveni = []
# 		for n in 1..(oddi.max)
# 			if n.even?
# 				eveni << n
# 			end
# 		end
# 	h = Hash[ *[ Array(oddi) , Array(eveni) ] ]
# end

p staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}
