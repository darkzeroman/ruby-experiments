arr = [1,2,3,-5,5,6,7,-5,-1,10]

i = 1
arr[0..-3].each_index do |i|
	j = i + 1
	k = arr.length-1

	while (k >= j) do
		if arr[i] + arr[j] + arr[k] == 0
			puts [i,j,k].inspect
			puts [arr[i], arr[j], arr[k]].inspect
			break
		end

		if arr[i] + arr[j] + arr[k] > 0
			k = k - 1
		else
			j = j + 1
		end

	end


end

puts "end"

