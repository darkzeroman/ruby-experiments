
numCoins = 11


arr = [false, true, false, true, true]


def win_or_lose?(arr, index)
	substraction_set = [1,3,4]

	substraction_set.each do |i|
		return true if (index - i) >= 0 and arr[index-i] == false
	end
	return false
end

(5..numCoins).each do |i|
	arr[i] = win_or_lose?(arr, i)

end

arr.map! {|i| i == true ? 'W' : 'L'}

p arr


