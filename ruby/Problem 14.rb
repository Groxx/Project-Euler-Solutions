#!/usr/bin/env ruby

=begin official problem
http://projecteuler.net/index.php?section=problems&id=14

The following iterative sequence is defined for the set of positive integers:

n -> n/2 (n is even)
n -> 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

def findLength(num)
  length = 1
  while (num > 1)
    (num % 2 == 0) ? (num = num/2) : (num = 3*num + 1)
    length += 1
    if length > 1000
      puts "omg: #{length}"
    end
  end
  length
end

max = 0
length = 0
1_000_000.times do |i|
  puts i if i%100_000==0
  if findLength(i) > length
    max = i
    length = findLength(i)
  end
end

puts "Max: #{max}"
puts "Length generated: #{length}"

# Takes a couple minutes.  Optimize!