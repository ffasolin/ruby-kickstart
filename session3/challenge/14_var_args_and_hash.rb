# You have two different problems to solve, you must get which one it is from a hash
# The default value for the hash should be :count_clumps
# If no hash is provided, choose count_clumps
#
# PROBLEM: count_clumps
# Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
# Return the number of clumps in the given arguments.
#
# problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
# problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1
#
#
# PROBLEM: same_ends
# Return true if the group of N numbers at the start and end of the array are the same.
# For example, with [5, 6, 45, 99, 13, 5, 6], the ends are the same for n=0 and n=2, and false for n=1 and n=3.
# You may assume that n is in the range 0..nums.length inclusive.
#
# The first parameter will be n, the rest will be the input to look for ends from
# problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
# problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false

def problem_14(*arr)
	problem = arr.pop[:problem] if arr.last.is_a? Hash
    problem ||= :count_clumps
	# problem = arr[:problem]
	# if problem == :count_clumps
	# 	return count_clumps(*arr)
	# elsif problem == :same_ends
	# 	return same_ends(*arr)
	# end
	return count_clumps(*arr) if problem == :count_clumps
	return same_ends(*arr) if problem == :same_ends
end

def same_ends(*nums)
	n = nums[0]
	if n == 0
		if nums[n+1].to_s.split("").last.to_i == nums[-1].to_s.split("").last.to_i
			true
		else
			false
		end
	else
		if nums[n].to_s.split("").last.to_i == nums[-1].to_s.split("").last.to_i
			true
		else
			false
		end
	end
end

def count_clumps(*array)
	arr = array.chunk{|elem| elem}.map{|elem, i| [elem, i.length]}
	clumpster = 0
	arr2 = arr.map {|a, b| b}
	0.upto (arr2.length - 1) do |i|
		clumpster += 1 if arr2[i] > 1
	end
	clumpster
end

p count_clumps 1, 2, 2, 3, 4, 4
p count_clumps 1, 1, 2, 1, 1
p same_ends 1, 2, 2, 3, 4, 4
p same_ends 1, 1, 2, 1, 1
p same_ends 0, 1, 2, 5, 2, 1

# Try to use ||=