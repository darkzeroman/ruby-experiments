# Print combinations of array. nCr

arr = Array(1..10)

def recCall(arr, index, seq, numCombs)
	if seq.length == numCombs
		puts seq.inspect
		return
	end

	for i in index..9
			new_seq = seq.dup << arr[i]
			recCall(arr, i + 1, new_seq, numCombs)
	end
end

recCall(arr, 0, [], 10)