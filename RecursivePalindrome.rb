def recCall(str_orig)
	str = str_orig.dup

	if (str.length == 1)
		return str
	elsif (str.length == 2 && str[0] == str[1])
		return str
	end

	if (str[0,1] == str[-1,1])
		temp_ans = recCall(str[1..-2])
		if temp_ans.length != 0 && (str.length - temp_ans.length == 2)
			return str[0,1] + temp_ans + str[0,1]
		elsif temp_ans.length != 0
			return temp_ans
		end
	else
		first = recCall(str[0..-2])
		second = recCall(str[1..-1])

		if (first.length > second.length)
			return first
		else
			return second
		end
	end
	return nil
end


puts recCall("44abbaa444")