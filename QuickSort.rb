# Incomplete

arr = Array(1..10).shuffle!

def quick_sort(arr)

end



def partition(arr)

	return arr if arr.length <= 1
	pivot = rand(arr.length)

	arr = swap(arr, pivot, arr.length-1)

	arr[0..-1]


end

def swap(arr, i, j)
	temp = arr[i]
	arr[i] = arr[j]
	arr[j] = arr[i]
	return arr
end