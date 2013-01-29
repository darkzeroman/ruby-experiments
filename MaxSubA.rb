arr=[1,-3,5,-2,9,-8,-6,4]


L = Array.new
B = Array.new(L.length, -1)
arr.each_index do |i|
	if i == 0
		L[i] = arr[i]
		B[i] = -1
	else
		if L[i-1] + arr[i] > arr[i]
			L[i] = L[i-1] + arr[i]
			B[i] = i
		else
			L[i] = arr[i]
			B[i] = -1
		end
	end
end


puts arr.inspect
puts L.inspect
puts B.inspect

def DP_solve(a)
    max, head, tail = 0, 0, 0
    cur_head = 0
    sum = [ [0, a[0]].max ] # base case
    (1...a.size).each do |j|
        sum[j] = [0, sum[j-1] + a[j]].max # bottom-up
        cur_head = j if sum[j-1] == 0 and sum[j] > 0
        if sum[j] > max
            head = cur_head
            tail = j
            max = sum[j]
        end
    end
    return max, head, tail
end
def DP_mine(a)

end
puts DP_solve(arr).inspect