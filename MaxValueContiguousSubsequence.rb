# Iterative Solution
arr = [5, -6, 7, 12, -3, 0, -11, -6]
T = Array.new
max_value = 0
arr.each_index do |index|
	if index == 0
		T[index] = arr[index]
	else
		T[index] = [T[index-1] + arr[index], arr[index]].max
	end
	max_value = [max_value, T[index]].max
end
puts max_value

