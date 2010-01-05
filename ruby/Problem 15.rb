#!/usr/bin/env ruby

=begin original problem
http://projecteuler.net/index.php?section=problems&id=15

Starting in the top left corner of a 2 x 2 grid, there are 6 routes (without backtracking) to the bottom right corner.

[images available online]

How many routes are there through a 20 x 20 grid?
=end

=begin
Problem:
  Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.
  How many routes are there through a 20x20 grid?

My Notes:
  Solve with a Pascal's Triangle.
    Each node = an intersection.
    Each subsequent node = sum of previously-connected nodes
  Code a pascal's triangle, and solve for opposite corner.
=end

@grid
@size

def generate_row(row)
  size = @size+1
  if row <= (size/2)
    # widen
    @grid[row] = Array.new(row)
    @grid[row][0] = 1
    @grid[row][row-1] = 1
    (1..row-2).each do |col|
      @grid[row][col] = @grid[row-1][col-1] + @grid[row-1][col]
    end
  elsif row <= size
    # shrink
    @grid[row] = Array.new((size/2)-(row-(size/2)))
    ((size/2)-(row-(size/2))).times do |col|
      @grid[row][col] = @grid[row-1][col] + @grid[row-1][col+1]
    end
  else
    puts "over array bounds"
  end
  puts @grid[row].inspect
end

@size = 41
@grid = Array.new(@size)

@size.times do |i|
  generate_row(i+1)
end
puts "Answer: " + @grid[@size][0].to_s

=begin
  Optimization notes:
    "@size=41"?  weird.  Should be able to specify num-of-nodes (21 in this case)
    Nearly optimal speed, though.  Any improvements would be largely superfluous.
=end