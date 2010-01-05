#!/usr/bin/env ruby

=begin original problem
http://projecteuler.net/index.php?section=problems&id=21

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
=end

@result = []

def sum_of_divisors(num)
  result = []
  (1..(num/2)).each do |d|
    result << d if (num.to_f/d.to_f)%1 == 0
  end
  sum = 0
  result.each do |i|
    sum += i
  end
  sum
end

(1..9999).each do |i|
  sum = sum_of_divisors(i)
  if i == sum_of_divisors(sum) and i != sum
    @result << i
  end
end
puts @result.inspect
sum = 0
@result.each{|i| sum += i}
puts sum