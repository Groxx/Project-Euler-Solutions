#!/usr/bin/env ruby

class Integer
  def is_prime?
    return false if(self<=1)
    p=2
    while(p*p<=self) 
      return false if (self % p == 0)
      p += 1
    end
    return true
  end
end