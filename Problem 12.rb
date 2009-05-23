#!/usr/bin/env ruby
#
#  Created by  on 2009-05-19.
#  Copyright (c) 2009. All rights reserved.

def divisors(num)
  divs = 1
  (num/2).times do |i|
    if Float(num)/(i+1) == Integer(Float(num)/(i+1))
      divs += 1
    end
  end
  divs
end

solution = 0
bestSoFar = 0
(1_000..1_000_000_000).each do |i|
  tri = 0
  i.times do |i|
    tri += i+1
  end
  tmp = divisors(tri)
  if tmp > bestSoFar
    puts "#{i}: #{tri} has #{tmp}"
    bestSoFar = tmp
  end
  if tmp > 500
    break
  end
  i = i +1
end
puts solution

# Gah!  Takes hours.  Re-do with optimizations.