arr = [1,5,6,3]

(arr.length-1).downto(0) do |i|
	puts i
	index = rand(i)

	temp = arr[i]
	arr[i] = arr[index]
	arr[index] = temp
end

puts arr.inspect