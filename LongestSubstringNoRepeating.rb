require 'set'
str = "abcdbefgh"

str_buff = str.split('')


def isValid?(str)
	set = Set.new

	str.each do |char|
		return false if not set.add? char
	end

	return true
end

max = 0
for i in (0..str_buff.length-1)
	for j in (i+1..str_buff.length-1)
		next if not isValid? str_buff[i..j]

		max = [max, str_buff[i..j].length].max		
	end
end

p max