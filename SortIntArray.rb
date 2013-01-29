arr = [4, 94, 9, 14, 1]
str_arr = arr.collect{|i| i.to_s}

# Create the largest number possible. 
# So the largest number of 994141


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
