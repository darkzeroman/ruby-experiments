# Print combinations of array. nCr

arr = Array(1..10)

def print_combs(arr, index, seq, numCombs)
	if seq.length == numCombs
		puts seq.inspect
		return
	end

	for i in index..9
			new_seq = seq.dup << arr[i]
			print_combs(arr, i + 1, new_seq, numCombs)
	end
end

print_combs(arr, 0, [], 10)