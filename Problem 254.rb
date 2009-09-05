=begin
  Define f(n) as the sum of the factorials of the digits of n. For example, f(342) = 3! + 4! + 2! = 32.

  Define sf(n) as the sum of the digits of f(n). So sf(342) = 3 + 2 = 5.

  Define g(i) to be the smallest positive integer n such that sf(n) = i. Though sf(342) is 5, sf(25) is also 5, and it can be verified that g(5) is 25.

  Define sg(i) as the sum of the digits of g(i). So sg(5) = 2 + 5 = 7.

  Further, it can be verified that g(20) is 267 and  sg(i) for 1  i  20 is 156.

  What is sum(sg(i)) for 1<=i<=150?
=end

@sf_results = {}

def fact(n)
  sum = 1
  n.times do |i|
    sum = sum * (i+1)
  end
  sum
end

def f(n)
  sum = 0
  while (n > 0)
    sum += fact(n%10)
    n = n/10
  end
  sum
end

def sf(n)
  sum = 0
  n = f(n)
  while (n > 0)
    sum += n%10
    n = n/10
  end
  sum
end

def g(n)
  smallest = 0
  i = 1
  while(smallest==0)
    if sf(i) == n
      smallest = i
    else
      i = i+1
    end
  end
  smallest
end

def sg(n)
  n = g(n)
  sum = 0
  while (n > 0)
    sum += n%10
    n = n/10
  end
  sum
end

# note: will take a frighteningly long amount of time, do not run to completion.

sum=0
150.times do |i|
  puts i
  sum += sg(i+1)
end
puts sum