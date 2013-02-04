
cases = gets.chomp!.to_i


cases.times do |t|
	n_k = gets.split(' ').map{|i| i.to_i}
	n = n_k[0]
	k = n_k[1]

	arr = gets.split(' ').map{|i| i.to_i}
	next if ((n == 0) || (k == 0))

	all = arr.combination(k).to_a

	maxSum = all.inject(0) {|r,e| r+e.max}

	puts "Case #" + (t+1).to_s + ": " + maxSum.to_s
end


