# Made for Code Chef

num_tests = gets.to_i

num_tests.times {
	num_pairs = gets.to_i

	ManPref, Ranking, Current = Hash.new, Hash.new, Hash.new
	FreeMen = Array(1..num_pairs)
	Next = Array.new(num_pairs + 1, 1)
	
	num_pairs.times do |num|
		woman_prefs = gets.chomp.split().map(&:to_i)
		woman_num = woman_prefs.shift

		woman_prefs.each_with_index do |man, index|
			Ranking[[woman_num, man]] = index + 1
		end
	end

	num_pairs.times do |num|
		man_prefs = gets.chomp.split().map(&:to_i)
		man_num = man_prefs.shift

		man_prefs.each_with_index do |woman, index|
			ManPref[[man_num, index + 1]] = woman 
		end
	end
	
	while m = FreeMen.shift
		w = ManPref[[m, Next[m]]]
    Next[m] += 1
		if Current[w] != nil
			m_prime = Current[w]
			if Ranking[[w,m_prime]] < Ranking[[w,m]]
				FreeMen.push m
			else
				Current[w] = m
				FreeMen.push m_prime
			end
		else
			Current[w] = m
		end
	end

	Current.sort_by {|k,v| v}.each do |k, v|
		puts "#{v} #{k}"
	end
}
