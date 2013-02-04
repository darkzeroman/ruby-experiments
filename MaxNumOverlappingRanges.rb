input = [[1,10], [2,4], [4,5],[4,5]]
curr_open = []
input.sort!

max_seen = 0
while input.length > 0


	next_range = input.shift

	curr_open << next_range
	curr_open.sort_by! {|i| i[1]}

	while (curr_open.first[1] <= next_range[0])
		curr_open.shift
	end

	max_seen = [curr_open.length, max_seen].max
end

p max_seen


