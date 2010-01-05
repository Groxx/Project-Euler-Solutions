#!/usr/bin/env ruby

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