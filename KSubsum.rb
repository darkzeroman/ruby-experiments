# Find numbers that add up to n in 1..n

def subset_sum(index, curr_sum, n, curr_indices, left)
	if (curr_sum == n and left == 0)
		puts curr_indices.inspect
		return
	end

	if (curr_sum >= n || index >= n || left == 0)
		return
	end

	subset_sum(index+1, curr_sum, n, curr_indices, left)
	subset_sum(index+1, curr_sum + index, n, curr_indices.dup << index, left - 1)
end

subset_sum(0, 0, 10, [], 3)
