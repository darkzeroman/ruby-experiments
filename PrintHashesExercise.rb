# As a part of a exercise in a book. 
# Book:Think Like a Programmer - Creative Problem Solving

startSpace = 2
numHashes = 2

for i in (0..2)

	for j in (1..startSpace-i)
		print "_"
	end
	for j in (1..(i*2+numHashes))
		print "#"
	end
	for j in (1..startSpace-i)
		print "_"
	end
	print "\n"
end