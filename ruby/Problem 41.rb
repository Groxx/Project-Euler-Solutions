#!/usr/bin/env ruby
#
#  Created by  on 2009-08-11.
#  Copyright (c) 2009. All rights reserved.

=begin
We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.

What is the largest n-digit pandigital prime that exists?
=end

require "Integer_is_prime"

def is_pandigital(num)
  temp_num = num.to_s
  (1..temp_num.size).each do |i|
    return false if temp_num.index(i.to_s).nil?
  end
  true
end

@num=7654321
count = 0
while(@num > 1234567)  
  if is_pandigital(@num)
    if @num.is_prime?
      puts "Found! #{@num}"
      break
    else
      @num -= 2
    end
  else
    @num -= 2
  end
end