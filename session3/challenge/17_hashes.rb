# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse (hash1)
	str = ""
	for d in 1..hash1[:data] do
		str << d.to_s + "\n"
	end
	print str
end

# same as previous one - should work without print