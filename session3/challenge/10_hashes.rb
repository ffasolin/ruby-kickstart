# Lets represent a file system with hashes
# You will be passed a hash table, whose keys represent folders.
# Their values will either be arrays of filenames in that directory
# or they will be hashes with the same rules (a treelike structure)
#
# Your job is to take the hashes, and return an array containing
# all of the complete file paths where each directory is separated by a '/'
#
# HINT:
#   [1,2,3].is_a? Array # => true
#   [1,2,3].is_a? Hash  # => false
#   {1=>1}.is_a?  Array # => false
#   {1=>1}.is_a?  Hash  # => true
#
# HINT2:
#   Don't feel constrained, you may create any methods, classes, etc, that
#   you need to you may address the problem in any way you need to (I
#   haven't tried it yet, but will probably use a recursive approach)
#
# EXAMPLES:
#
# pathify 'usr' => {'bin' => ['ruby'] }                                                        # => ['/usr/bin/ruby']
# pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []
#
#
# create it from scratch :)


def pathify(hashx)
	arr = []
	return hashx.map { |item| "/" + item } if hashx.is_a? Array
		
	hashx.each do |a, b|
	arr2 = pathify(b)
	arr2.each do |c|
		arr << (a + c)
	end
	end
	arr.map { |slash| "/" + slash }
end



# arr = []
# 	hashx.each do |key, value|
# 		arr << key
# 			if value.is_a? Array
# 				arr << value
# 			else
# 				tree = pathify(value)
# 				tree.each do |key1, value1|
# 					arr << (key1 + value1)
# 				end
# 			end
# 		end
# 		arr
# 		end




			# value.each do |key1, value1|
			# 	if value1.is_a? Array
			# 		arr << key1
			# 		arr << value1
			# 		# if value1.count > 1
			# 		# 	arr.flatten.pop[-1]
			# 		# end
			# 	elsif  value1.is_a? Hash
			# 		arr << pathify(value1)
			# 	end
			# end
			#end





	# 	value.each do |key1, value1|
	# 		arr << key1
	# 		if value1.count == 1
	# 		    arr << value1
	# 		elsif value1.count > 1
	# 			value1.each do |a, b|
	# 				arr << a
	# 				arr.delete(a) << b
	# 			end
	# 		end
	# 	end
	# end
	# final_arr = []
	# final_arr << arr.join("/")
	# p final_arr

	# final_arr = []
	# hashx = hashx.flatten
	# final_arr << hashx.keys
	# final_arr << hashx.values
	# final_arr.join





p pathify 'usr' => {'bin' => ['ruby'] }                                                      # => ['/usr/bin/ruby']
p pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
p pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
p pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync'] 









