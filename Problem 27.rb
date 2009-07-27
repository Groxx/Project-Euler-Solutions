#!/usr/bin/env ruby

require 'Integer_is_prime'

def num_of_primes(a,b)
  n = 0
  while(true)
    if ( n**2+(a*n)+b ).is_prime?
      n += 1
    else
      break
    end
  end
  n
end

p_max = 0
a_max = 0
b_max = 0

(-999..999).each do |a|
  puts a
  (-999..999).each do |b|
    p = num_of_primes(a,b)
    if p > p_max
      p_max = p
      a_max = a
      b_max = b
    end
  end
end

puts "max: #{p_max}"
puts "  a:#{a_max}"
puts "  b:#{b_max}"

#note: takes a number of seconds to run.  C++ finishes in less than 1 o_O.