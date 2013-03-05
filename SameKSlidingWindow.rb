hash = Hash.new(0)

arr = [5,1,5,5,10,3]

k = 2
arr.each_with_index do |v, i|

	hash[v] = hash[v] + 1

	if i >= k
		old_index = arr[i-k]
		hash[old_index] = hash[old_index] - 1
		hash.delete old_index if hash[old_index] == 0
	end
	
	puts v if hash[v] > 1

end