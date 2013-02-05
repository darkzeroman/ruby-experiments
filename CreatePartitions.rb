require 'set'

Explored = Set.new

# Create partitions, like: http://en.wikipedia.org/wiki/Partition_problem

def recCall(num, arr)
	if num == 0 && !(Explored.include? arr.sort!)
		Explored.add arr
	end

	num.times do |val|
 		val = val + 1
		recCall(num - val, arr.dup << val)
	end
end

recCall(5, [])
Explored.sort.each do |key|
	puts key.inspect
end
