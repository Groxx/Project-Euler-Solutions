#!/usr/bin/env ruby

=begin original problem
http://projecteuler.net/index.php?section=problems&id=20

n! means n x (n - 1) x ... x 3 x 2 x 1

Find the sum of the digits in the number 100!
=end

fact = 1
sum = 0

(1..100).each do |i|
  fact *= i
end
(fact.to_s).size.times do |i|
  sum += Integer(fact.to_s[i,1])
end
puts sum