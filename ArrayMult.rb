arr = [1, 4, 5, 2, 3]

newArr = Array.new(arr.length, 1)

prod = 1
arr.each_index do |index|

	newArr[index] = prod
	prod = arr[index]*prod
end

prod = 1
arr.reverse!
newArr.reverse!

arr.each_index do |index|

	newArr[index] = newArr[index]*prod
	prod = prod*arr[index]

end
newArr.reverse!

puts newArr.inspect