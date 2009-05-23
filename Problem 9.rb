#!/usr/bin/env ruby
#
#  Created by  on 2009-05-09.
#  Copyright (c) 2009. All rights reserved.

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