require 'matrix'

def createMatrix(n, x)
	arrays = Array.new
	n.times{ |num|
		array = Array.new(n, 0)
		array[num] = 1
		arrays << array
	}	
	row_before = x - 1;
	row_after = x + 1;

	if (x == 0)
		row_before = n - 1
	elsif (x == n - 1)
		row_after = 0
	end

	arrays[row_before][x] = 1
	arrays[row_after][x] = 1
	Matrix.rows(arrays)
end

to_print = []
inputs = []

T = gets.to_i
1.step(T, 1) { |i| 
	lines = gets.split(" ")
	input = gets.split(" ").map{ |s| s.to_i}

	n = lines[0].to_i
	m = lines[1].to_i

	inputs << [n,m,input]
}

inputs.each do |input|
	n = input[0];
	m = input[1];

	original_matrix = Matrix.rows([input[2]])

	matrices = []

	0.step(n-1, 1) { |starting_child|
		index = starting_child
		new_matrix = original_matrix
		m.times { |m_value|
			# puts index

			new_matrix = Matrix.rows([(new_matrix*createMatrix(n,index)).row(0).to_a.map{|val| val % 1000000007}])
			index = (index == n-1) ? 0 : index + 1
		}
		puts new_matrix.row(0).to_a.join(" ")
	}
	puts
end
