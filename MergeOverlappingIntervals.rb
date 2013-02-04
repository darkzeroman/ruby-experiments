first = [[1,4],[6,10],[14,19]]
second = [[13,17]]

merged = []

while (first.length > 0 || second.length > 0)

	
	if first.length == 0
		nextRegion = second.shift
	elsif second.length == 0
		nextRegion = first.shift
	else
		nextRegion = first.first[0] < second.first[0] ? first.shift : second.shift
	end

	range_end = nextRegion[1]

	while (range_end)
		
end

def nextInRange(first, second, arr)
	range_end = arr[1]
	while 
		if 



	end


end