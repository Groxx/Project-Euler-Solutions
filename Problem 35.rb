#!/usr/bin/env ruby
#
#  Created by  on 2009-05-17.
#  Copyright (c) 2009. All rights reserved.

@array

def load(filename)
  @array = []
  begin
    data = File.open(filename, "r")
    while (line = data.readline.chomp)
      @array += line.split(" ")
    end
  rescue EOFError
    data.close
  end
end

def findRotations(num)
  found = true
  (num.size-1).times do |i|
    found = false if !@array.include?(num[i+1..num.size-1] + num[0..i])
  end
  found
end
@results = []
load("Problem 35 primes.txt")
@array.each do |x| 
  if findRotations(x)
    @results += [x]
    puts x
  end
end
# VERY slow, as this is basically brute-force (with a slow lookup).  Come up with a more optimal method.