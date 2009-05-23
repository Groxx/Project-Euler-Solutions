#!/usr/bin/env ruby
#
#  Created by  on 2009-05-09.
#  Copyright (c) 2009. All rights reserved.

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