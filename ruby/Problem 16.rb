#!/usr/bin/env ruby

puts (2**1000).to_s.split("").inject{|x,y| Integer(x)+Integer(y)}