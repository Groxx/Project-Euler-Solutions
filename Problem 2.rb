#!/usr/bin/env ruby

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