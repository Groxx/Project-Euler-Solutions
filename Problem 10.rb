#!/usr/bin/env ruby
#
#  Created by  on 2009-05-19.
#  Copyright (c) 2009. All rights reserved.
primes = File.new("first million primes.txt", "r")
sum = 0
begin
while (line = primes.readline.chomp)
  line.split(" ").each do |x|
    if !x.nil? and Integer(x) < 2_000_000
      sum += Integer(x)
    end
  end
end
rescue EOFError
  primes.close
end
puts sum