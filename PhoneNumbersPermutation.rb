$numbers_letters = Hash.new

$numbers_letters[2] = %w{a b c}
$numbers_letters[3] = %w{d e f}
$numbers_letters[4] = %w{g h i}
$numbers_letters[5] = %w{d e f}
$numbers_letters[6] = %w{m n o}
$numbers_letters[7] = %w{p q r s}
$numbers_letters[8] = %w{t u v}
$numbers_letters[9] = %w{w x y z}

$phone_num = "7705791412".split(//)

def recCall(index=0, str="")
	if index == $phone_num.length
		puts str
		return
	end

	curr_digit = $phone_num[index].to_i

	if $numbers_letters.key? curr_digit
		$numbers_letters[curr_digit].each do |char|
			recCall(index+1, str << char)
			str.chop!
		end
	else
		recCall(index+1, str << $phone_num[index])
		str.chop!
	end
end

recCall