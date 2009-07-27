#!/usr/bin/env ruby

require "Integer_is_prime"

primes = [2]
i = 3

while (primes.length <= 10000)
  if i.is_prime?
    primes += [i]
  end
  i += 1
end

puts primes.length
puts primes.inspect