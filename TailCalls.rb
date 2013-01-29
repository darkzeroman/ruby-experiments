arr = [1,2,3,4,5,6,7,8,9,10]


def sum(arr, cum)
	if arr.length == 0
		return cum
	else
		return sum(arr[1..-1], cum+arr.shift)
	end
end

puts sum(arr, 0)

factarr = [2,3,4,5]

def factorial(arr, prod)
	if arr.length == 0
		return prod
	else
		return factorial(arr[1..-1], prod*arr.shift)
	end
end

puts factorial(factarr,1)