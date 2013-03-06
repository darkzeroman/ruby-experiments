# Print out the overlapping ranges.


a = [[-10,-5], [1,5], [8,15], [16,42], [50,90]]
b = [[2,7], [12,18], [40,50], [80,100]]

def getNext(a, b)
	return a.shift if b.empty? and a.length > 0
	return b.shift if a.empty? and b.length > 0
	return a.first.first > b.first.first ? b.shift : a.shift
end

def peekNext(a,b)
	return a.first if b.empty? and a.length > 0
	return b.first if a.empty? and b.length > 0
	return [1.0/0] if a.empty? and b.empty?
	return a.first.first > b.first.first ? b.first : a.first
end

while a.length > 0 or b.length > 0
	r = getNext(a,b)

	if peekNext(a,b).first > r.last
		p r
	end
	while (peekNext(a,b).first < r.last)
		next_range = getNext(a,b)
		if next_range.last <= r.last
			puts next_range.inspect
		else
			puts [next_range.first, r.last].inspect
			r = next_range
		end

	end

end
