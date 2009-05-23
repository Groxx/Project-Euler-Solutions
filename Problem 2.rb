#!/usr/bin/env ruby
#
#  Created by  on 2009-05-09.
#  Copyright (c) 2009. All rights reserved.

def fibUpTo(max)
  one = 1
  two = 2
  sum = 2
  
  while (one + two < max) do
    three = one + two
    sum += three if three%2==0
    one = two
    two = three
  end
  sum
end

puts fibUpTo(4000000)