require 'set'
require 'timeout'

# How to get the goal amount of water in two glasses of 
# capacity X and Y when starting with start_x and start_y

def pouring_problem(capX, capY, goal, start_x=0, start_y=0)
	start_state = [start_x, start_y]
	if start_state.include? goal
		return start_state
	end

	explored = Set.new
	frontier = Array.new

	frontier << [['Start', start_state]]
	explored.add start_state

	until frontier.empty?
		path = frontier.shift
		curr_state = path.last.last	

		x = curr_state[0]
		y = curr_state[1]

		successors(x, capX, y, capY).each do |state, action|
			unless explored.include? state
				explored.add state
				new_path = path.dup << [action, state]
				if state.include? goal
					return new_path
				else
					frontier << new_path
				end
			end
		end
	end
end


def successors(x, capX, y, capY)
	successors = Hash.new
	# fill
	successors[[capX, y]] = 'fill X'
	successors[[x, capY]] = 'fill Y'
	# empty
	successors[[0, y]] = 'empty X'
	successors[[x, 0]] = 'empty Y'
	# pour into other
	successors[[pouring_into(capX, x, y)[0], pouring_into(capX, x, y)[1]]] = 'X<-Y'
	successors[[pouring_into(capY, y, x)[1], pouring_into(capY, y, x)[0]]] = 'X->Y'	
	return successors
end

def pouring_into(cap, current, additional)
	if ((current + additional) <= cap)
		return [current+additional, 0]
	else
		return [cap, additional-(cap-current)]
	end
end

ans = nil
Timeout::timeout(1) do
	ans = pouring_problem(5, 4, 3)
end

ans.each do |action_state|
 puts [action_state.last, action_state.first].inspect
end