arr = [4, 94, 9, 14, 1]
str_arr = arr.collect{|i| i.to_s}

# Create the largest number possible when converted to string. 
# So the largest number of [4,94,9,14,1] => 994141

# This uses a bubble sort to figure out the placement of values

swapped = true

while swapped
	swapped = false
	0.upto(arr.length-2) do |i|
		if Integer(str_arr[i]+str_arr[i+1]) < Integer(str_arr[i+1]+str_arr[i])
			swapped = true
			str_arr[i], str_arr[i+1] = str_arr[i+1], str_arr[i]
		end
	end

end

puts str_arr.inspect
