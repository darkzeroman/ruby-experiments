
arr = [-1,0,1,2,3,4,5,10]
# arr = [1, 5]
cum = Array.new

arr.each_with_index do |v, i|
	if i == 0
		cum[i] = arr[i]
	else
		cum[i] = arr[i] + cum[i-1]
	end
end

parts = Array.new
cum.each_with_index do |v,i|
	parts << [ (cum.last - 2*v).abs, i+1]
end
parts.pop
puts cum.inspect
# puts parts.inspect

# puts parts.min.inspect
puts
cut = parts.min.last
puts arr[0..(cut-1)].inspect + ", " + arr[(cut)..-1].inspect


