#!/usr/bin/env ruby

=begin official problem
http://projecteuler.net/index.php?section=problems&id=4

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

def isPalindrome(x, y)
  if ((x*y).to_s == (x*y).to_s.reverse)
    return (x*y)
  end
end

solutions = []
(900..999).to_a.reverse.each do |x|
  (900..999).to_a.reverse.each do |y|
    if isPalindrome(x,y)
      solutions += [isPalindrome(x,y)]
    end
  end
end
puts solutions.sort!.last