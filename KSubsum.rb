# Find left numbers that add up to n in 1..n

def recCall(index, curr_sum, n, curr_indices, left)
	if (curr_sum == n and left == 0)
		puts curr_indices.inspect
		return
	end

	if (curr_sum >= n || index >= n || left == 0)
		return
	end

	recCall(index+1, curr_sum, n, curr_indices, left)
	recCall(index+1, curr_sum + index, n, curr_indices.dup << index, left - 1)
end

recCall(0, 0, 10, [], 3)
