#!/usr/bin/env ruby
#
#  Created by  on 2009-08-11.
#  Copyright (c) 2009. All rights reserved.

=begin
It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.

Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.
=end

def permutation?(left, right)
  return false if left.size != right.size
  
  left.size.times do |i|
    return false if right.index(left[i,1]).nil?
  end
  true
end

def x_multiples?(x, num)
  (2..x).each do |times|
    return false unless permutation?(num.to_s, (num * times).to_s)
  end
  true
end

num = 1
while (true)
  if x_multiples?(6, num)
    puts num
    break
  end
  num += 1
end

  