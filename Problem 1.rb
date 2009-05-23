#!/usr/bin/env ruby
#
#  Created by  on 2009-05-09.
#  Copyright (c) 2009. All rights reserved.

sum = 0
1000.times do |i|
  if i%3==0 or i%5==0
    sum+=i
  end
end
puts sum