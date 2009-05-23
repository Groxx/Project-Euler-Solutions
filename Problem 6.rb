#!/usr/bin/env ruby
#
#  Created by  on 2009-05-09.
#  Copyright (c) 2009. All rights reserved.

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