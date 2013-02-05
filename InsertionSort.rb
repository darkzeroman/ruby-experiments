# Insertion sort

arr = [2,4,5,6,7]

num = -10

index = arr.length-1

while index >= 0 and num < arr[index]
	arr[index+1] = arr[index]
	index = index - 1
end

arr[index+1] = num

p arr