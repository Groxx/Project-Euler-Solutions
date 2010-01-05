#!/usr/bin/env ruby

=begin original problem
http://projecteuler.net/index.php?section=problems&id=18
http://projecteuler.net/index.php?section=problems&id=67

By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

3
7 4
2 4 6
8 5 9 3
[note: path in red online]

That is, 3 + 7 + 4 + 9 = 23.

[Note: below is for problem 17]
Find the maximum total from top to bottom of the triangle below:

[snipped]

NOTE: As there are only 16384 routes, it is possible to solve this problem by trying every route. However, Problem 67, is the same challenge with a triangle containing one-hundred rows; it cannot be solved by brute force, and requires a clever method! ;o)

[Note: problem 67's data located at: "../data/Problem 67 triangle.txt"]
=end

@triangle = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"


def readToArray(filename="")
  @array = []
  if filename == ""
    @triangle.each do |line|
      @array +=  [line.split(" ").each{|v| [v.to_i]}]
    end
  else
    File.new(filename).readlines.each do |line|
      @array += [line.split(" ").each{|v| [v.to_i]}]
    end
  end
  @array.collect!{|a| a.collect!{|i| i = i.to_i}}
end

def getBestRouteSum
  (0..@array.size-2).to_a.reverse.each do |row|
    (0..@array[row].size-1).each do |col|
      @array[row][col] += ((@array[row+1][col] > @array[row+1][col+1]) ? @array[row+1][col] : @array[row+1][col+1])
    end
  end
  @array[0][0]
end

readToArray()
puts "Problem 18: #{getBestRouteSum()}"

readToArray("../data/Problem 67 triangle.txt")
puts "Problem 67: #{getBestRouteSum()}"