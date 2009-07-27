#!/usr/bin/env ruby

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