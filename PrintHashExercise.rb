

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