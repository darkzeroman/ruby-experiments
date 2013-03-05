require 'set'

set = Set.new
arr = [5]

while arr.length != 5
	arr.each_with_index do |v, i|
		next if i == arr.length or v == 1

		if arr[i+1]
			arr[i+1] = arr[i+1] + 1
		else
			arr << 1
		end
		arr[i] = arr[i] -1 

		p arr if not set.member? arr.clone.sort!
		set << arr.clone.sort!
		
	end
end

