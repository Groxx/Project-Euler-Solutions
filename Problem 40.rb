#!/usr/bin/env ruby

=begin
  An irrational decimal fraction is created by concatenating the positive integers:

  0.123456789101112131415161718192021...

  It can be seen that the 12th digit of the fractional part is 1.

  If dn represents the nth digit of the fractional part, find the value of the following expression.

  d1 x d10 x d100 x d1000 x d10000 x d100000 x d1000000
=end

num = "0"
n = 1
while(num.size <= 1_000_000)
  num << n.to_s
  n += 1
  puts "n: #{n}  => #{num.size}" if n%1000==0 
end

puts num[1..1].to_i * num[10..10].to_i * num[100..100].to_i * num[1_000..1_000].to_i * num[10_000..10_000].to_i * num[100_000..100_000].to_i * num[1_000_000..1_000_000].to_i

#note: += generates a new string each time, << is destructive (and waaaay faster.  1s vs what was going to be several minutes, if not an hour or more (didn't finish))