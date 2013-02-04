

hash = Hash.new()


for n in 1..2000
	arr = [1,5,6,3]
	(arr.length-1).downto(0) do |i|
		index = rand(i+length-1)

		temp = arr[i]
		arr[i] = arr[index]
		arr[index] = temp
	end
	hash[arr] = 0 if hash[arr].nil?
	hash[arr]= hash[arr]+1
end

hash.each do |k,v|
	puts [k,v].inspect
end
puts hash.length