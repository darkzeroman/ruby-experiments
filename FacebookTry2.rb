
cases = gets.chomp!.to_i


def nCr(n,k)

		nfact = (1..n).inject(:*)
		kfact = (1..k).inject(:*)
		nminuskfact = (1..(n-k)).inject(:*)
		return nfact / (kfact * nminuskfact)
end

cases.times do |t|
	n_k = gets.split(' ').map{|i| i.to_i}
	n = n_k[0]
	k = n_k[1]

	arr = gets.split(' ').map{|i| i.to_i}
	next if ((n == 0) || (k == 0))

	arr.sort!.reverse!
	
	sum = 0
	num_iter = nCr(n,k) 

	arr.each do |a|
		for i in (1..k)
			sum = sum + a
			num_iter = num_iter - 1
			p "here"
			break if num_iter == 0
		end

		break if num_iter == 0
	end


	# all = arr.combination(k).to_a

	# maxSum = all.inject(0) {|r,e| r+e.max}

	# puts "Case #" + (t+1).to_s + ": " + maxSum.to_s
	# p arr.length
	p ""
end


