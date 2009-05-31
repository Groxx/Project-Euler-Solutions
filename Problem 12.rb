#!/usr/bin/env ruby
#
#  Created by  on 2009-05-19.
#  Copyright (c) 2009. All rights reserved.

def divisors(num)
  divs = 0
  current = 1
  max = num/2
  
  while (current < max)
    if (Float(num)/(current))%1 == 0
      divs += 2
      divs -= 1 if num/current == current # account for things like 36 == 6*6
      max = num/current
    end
    current += 1
  end
  divs
end

solution = 0
bestSoFar = 0
(1..100_000).each do |i|
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
  i += 1
end
puts solution

# V2: now uses current< max, instead of checking all divisors up to 1/2 of num.  Solves in ~2 minutes or so.
# Next step: better way of counting divisors