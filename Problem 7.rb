#!/usr/bin/env ruby
#
#  Created by  on 2009-05-09.
#  Copyright (c) 2009. All rights reserved.

def isPrime(x)
  (2..x/2).each do |i|
    if x%i==0
      return false
    end
  end
end

primes = [2]
i = 3

while (primes.length <= 10000)
  if isPrime(i)
    primes += [i]
  end
  i += 1
end

puts primes.length
puts primes.inspect

# Several FAR more optimal methods.