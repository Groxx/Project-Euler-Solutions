#!/usr/bin/env ruby
#
#  Created by  on 2009-05-19.
#  Copyright (c) 2009. All rights reserved.

puts (2**1000).to_s.split("").inject{|x,y| Integer(x)+Integer(y)}