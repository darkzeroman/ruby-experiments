ranges = [[1,3], [4,6], [5,7]]

while not ranges.empty?
	curr_range = ranges.shift

	if ranges.empty?
		p curr_range
		break
	end

	ending = curr_range.last

	ending = ranges.shift.last while not ranges.empty? and ending > ranges.first.first

	p [curr_range.first, ending]
end


a = [[1,5], [8,15], [16,42], [50,90]]
b = [[2,7], [12,18], [40,50], [80,100]]