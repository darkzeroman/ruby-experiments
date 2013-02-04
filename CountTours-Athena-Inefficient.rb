#Inefficient Method of solving this problem

paths_stack = Array.new
grid = Hash.new

ROWS = 4
COLS = 6
$count = 0

def dfs(paths_stack)
	while not paths_stack.empty? 
		curr_path = paths_stack.pop
		# puts ""
		# puts "curr_path:" + curr_path.inspect
		if (curr_path.last == [0,ROWS-1] and curr_path.length == ROWS*COLS)
			$count = $count + 1
			puts "SUCCESS"
			next
		end		
		if (curr_path.last == [0,ROWS-1] and curr_path.length < ROWS*COLS)
			next
		end
		curr_next_paths = gen_succs(curr_path)
		if (curr_next_paths.length == 0)
			next
		end
		for curr_next_path in curr_next_paths
			paths_stack << curr_next_path
		end

		# puts "stack:" + paths_stack.inspect
	end
end

def gen_succs(path)
	end_point = path.last
	ret_paths = []
	offsets = [[0,1], [1,0], [-1,0], [0,-1]]
	for offset in offsets
		next_point = [end_point[0] + offset[0], end_point[1] + offset[1]]
		unless next_point[0] < 0 or next_point[1] < 0 or next_point[0] >= COLS or next_point[1] >= ROWS
			unless (path.include? next_point)
				dup_path = path.dup 
				dup_path << next_point
				ret_paths << dup_path
			end
		end

	end

	return ret_paths
end

def start_search
	dfs([[[0,0]]])
end

start_search
puts $count