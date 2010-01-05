#!/usr/bin/env ruby

first = 1
second = 1
sum = 0
number = 2

while (sum.to_s.length < 1000)
  sum = first + second
  first = second
  second = sum
  number += 1
end

puts number