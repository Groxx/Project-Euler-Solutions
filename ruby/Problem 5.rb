#!/usr/bin/env ruby

=begin official problem
http://projecteuler.net/index.php?section=problems&id=5

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
=end

def smallestDivisibleBy(range)
  num = 0
  while (true) do
    num += 1
    break if divisibleBy(num, range)
  end
  num
end

def divisibleBy(val, range)
  for i in range
    if val%i!=0 or val<i
      return false
    end
  end
  true
end

puts smallestDivisibleBy([20,19,18,17,16,15,14,13,12,11])