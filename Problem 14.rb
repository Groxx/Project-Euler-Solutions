#!/usr/bin/env ruby
#
#  Created by  on 2009-05-19.
#  Copyright (c) 2009. All rights reserved.

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