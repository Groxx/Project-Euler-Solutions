#!/usr/bin/env ruby

=begin official problem
http://projecteuler.net/index.php?section=problems&id=10

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end

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