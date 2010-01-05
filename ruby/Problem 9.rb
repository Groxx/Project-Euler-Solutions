#!/usr/bin/env ruby

=begin official problem
http://projecteuler.net/index.php?section=problems&id=9

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

def isTriplet(x, y, z)
  if (x**2 + y**2 == z**2)
    return true
  end
end

(1..999).each do |x|
  puts "x = #{x}"
  (x..999).each do |y|
    (y..999).each do |z|
      if (x+y+z == 1000) and isTriplet(x,y,z)
        puts "#{x} #{y} #{z}"
      end
    end
  end
end