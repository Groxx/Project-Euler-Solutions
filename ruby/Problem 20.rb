#!/usr/bin/env ruby

fact = 1
sum = 0

(1..100).each do |i|
  fact *= i
end
(fact.to_s).size.times do |i|
  sum += Integer(fact.to_s[i,1])
end
puts sum