#!/usr/bin/env ruby

=begin original problem
http://projecteuler.net/index.php?section=problems&id=16

2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?
=end

puts (2**1000).to_s.split("").inject{|x,y| Integer(x)+Integer(y)}