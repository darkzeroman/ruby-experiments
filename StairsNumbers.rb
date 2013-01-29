# How many ways to get to step i when you can only step in increments of steps array

n = 10
T = Array.new(n,0)
steps = [1,2,3]
T[0] = 1

n.times do |i|
	steps.each do |step|
		if i - step >= 0
			T[i] = T[i] + T[i-step] 
		end
	end

end

puts T[1..-1].inspect

