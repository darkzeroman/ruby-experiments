

values = [0,1,5,8,9,10,17, 17,20]

rod_size = 8
t = Array.new(rod_size+1,0)


t.each_with_index do |v, i|
	next if i == 0
	max = 0
	values.each_with_index do |value, valueIndex|
		next if (i-valueIndex) < 0 or valueIndex == 0

		max = [max, t[i-valueIndex] + value].max
	end
	t[i] = max
end

p t