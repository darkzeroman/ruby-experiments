# ==========
=begin comments

I started to build a table of the number of tours and noticed a trend for a
grid of 4 rows and any number of columns. As I started to explore the 
relationship the integer sequence I was able to figure out a relationship.

The following recurrence formula is used to calculate the number of tours
	T[n]=2*T[n-1]+2*T[n-2]-2*T[n-3]+T[n-4] when n > 4
where n is the number of columns.

This was confirmed when I Googled the sequence and found this:
	http://oeis.org/A181688

The solution for 4 rows and 10 columns is: 2329. This was calculated in less
than a 0.1 second and is a O(n) solution. Tested on a Macbook Pro, 2.3Ghz, etc.

Run with command: "ruby Vohra_Count_Tours COLS ROWS" or changing the width/height
defaults.

=end 
# ============

#  default values that are used if nothing is passed in
width  = 10
height = 4

# Overwriting values if arguments exist
width   = Integer(ARGV[0]) unless ARGV[0].nil? 
height  = Integer(ARGV[1]) unless ARGV[1].nil? 

# Since this only works for grids with 4 columns, quit otherwise
if height != 4
	puts "Error, only accepts input for X columns and 4 rows"
	exit
end

# Checking for incorrect input
if width <= 0
	puts "Invalid number of columns"
	exit
end

# Array that holds the solutions up to the needed column
T = Array.new(width, 0)

# These hold the base cases that are used for the recurrence equation.
T[0..3] = [1, 1, 4, 8]

# Looping over and calculating T[n] where n is the number of columns
T.each_index do |index|
	if index < 4 # Anything less than fourth index is a base case
		next
	end
	T[index] = 2*T[index-1] + 2*T[index-2] - 2*T[index-3] + T[index-4]
end

# Final answer
puts T[width-1]