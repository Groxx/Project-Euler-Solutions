#!/usr/bin/env ruby

=begin official problem
http://projecteuler.net/index.php?section=problems&id=6

The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 55^2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
=end

def sumOfSquares(max)
  out = 0
  max.times do |i|
    out += (i+1)**2
  end
  out
end
def squareOfSums(max)
  out = 0
  max.times do |i|
    out += i+1
  end
  out**2
end

puts squareOfSums(100) - sumOfSquares(100)