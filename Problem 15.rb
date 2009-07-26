#!/usr/bin/env ruby
#
#  Created by  on 2009-05-09.
#  Copyright (c) 2009. All rights reserved.

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
