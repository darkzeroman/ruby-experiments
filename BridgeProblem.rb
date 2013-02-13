require 'set'
require 'timeout'

# Don't remember what I made this to do.

def bridge_problem(start_state)
	return ['Start', start_state] if start_state.first.size == 0

	explored = Set.new
	frontier = Array.new

	frontier << [['Start', start_state]]
	explored.add start_state

	until frontier.empty?

		path = frontier.shift

		curr_state = path.last.last

		genSucc(curr_state).each do |successor|
			action = successor.first
			state = successor.last
			
			unless explored.include? state
				puts state.inspect
				explored.add state
				new_path = path.dup << [action, state]
				if state[0].size == 0
					return new_path
				else
					frontier << new_path
				end
			end
		end
	end
end

def genSucc(state)
	next_states = Array.new
	if state.last
		state[0].each do |val|
			state_temp = state.dup
			ls_temp = state[0].dup
			rs_temp = state[1].dup
			ls_temp.delete(val)
			rs_temp.push val
		end

		state[0].combination(2).to_a.each do |arr| 
			state_temp = state.dup
			ls_temp = state[0].dup
			rs_temp = state[1].dup
			ls_temp.delete(arr.first)
			ls_temp.delete(arr.last)

			rs_temp.push arr.first
			rs_temp.push arr.last

			next_states << ['->',[ls_temp, rs_temp, false]]
		end
	else
		state[1].each do |val|
			state_temp = state.dup
			ls_temp = state[0].dup
			rs_temp = state[1].dup
			rs_temp.delete(val)
			ls_temp.push val
		end
		state[1].combination(2).to_a.each do |arr| 
			state_temp = state.dup
			ls_temp = state[0].dup
			rs_temp = state[1].dup
			rs_temp.delete(arr.first)
			rs_temp.delete(arr.last)

			ls_temp.push arr.first
			ls_temp.push arr.last

			next_states << ['<-',[ls_temp, rs_temp, true]]
		end
	end
	return next_states
end



# puts genSucc([[1,2], [3], true]).inspect
puts bridge_problem([[10, 4], [5, 2], true]).inspect