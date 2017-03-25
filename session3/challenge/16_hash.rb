# Print to stdout, each element in a hash based linked list.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# print_list head                    # >> "1\n"
# head = {:data => 2, :next => head}
# print_list head                    # >> "2\n1\n"
# head = {:data => 3, :next => head}
# print_list head                    # >> "3\n2\n1\n"
# head = {:data => 4, :next => head}
# print_list head                    # >> "4\n3\n2\n1\n"
# head = {:data => 5, :next => head}
# print_list head                    # >> "5\n4\n3\n2\n1\n"
# head = {:data => 6, :next => head}
# print_list head                    # >> "6\n5\n4\n3\n2\n1\n"

def print_list (hash1)
	str = ""
	d = hash1[:data]
	while d != 0 do
		str << d.to_s + "\n"
		d -= 1
	end
	print str
end


head = {:data=>1, :next=>nil}
p print_list head
head = {:data => 1, :next => nil}
p print_list head                    # >> "1\n"
head = {:data => 2, :next => head}
p print_list head                    # >> "2\n1\n"
head = {:data => 3, :next => head}
p print_list head                    # >> "3\n2\n1\n"
head = {:data => 4, :next => head}
p print_list head                    # >> "4\n3\n2\n1\n"
head = {:data => 5, :next => head}
p print_list head                    # >> "5\n4\n3\n2\n1\n"
head = {:data => 6, :next => head}
p print_list head                    # >> "6\n5\n4\n3\n2\n1\n"


# Figure out why it's not working without print even though it's correct