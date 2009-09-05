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

def compact_for_g(n)
  # slower than regular processing, switch to non-string number processing
  tmp = n.to_s
  result = ""
  counts = [0,0,0,0,0,0,0,0,0]
  
  tmp.delete!("0")
  (1..8).each do |i|
    counts[i-1] += tmp.count(i.to_s)
    result << i.to_s*(counts[i-1]%(i+1))
    counts[i] += counts[i-1]/(i+1)
  end
  result << "9"*counts[8]
  result.to_i
end

def g(n)
=begin
  inefficient, methods of speeding up:
    1) cache results (quickly increases, appears exponential, ~100k to 150k+ at around 35-40)
    2) pre-filter results.  Same digits / equivalent digits result in same output
      ie, sf(1000) == sf(1), sf(222) == sf(3)
  
  Idea: hash / large array of results.  On lookup of sf(n), check a[n].  If exists, smallest is known.  If not, fill.  DO THIS AFTER PRE-FILTERING.
=end

=begin
  Prefiltering scheme:
    Sort by smallest num first (13,14,etc)
    Drop all zeros (100 == 1)
    Numbering: remember, sf(n) == sum of digits of sum of factorials, so any digits that can be expressed in fewer digits are equivalent
      11     == 2
      222    == 3
      3333   == 4
      etc... prev digit digit-plus-1-times == next digit
=end
  smallest = 0
  i = 1
  while(smallest==0)
    compacted = compact_for_g(i)
    if !@sf_results.include? compacted
      @sf_results[compacted] = sf(compacted)
    end
    
    if @sf_results[compacted] == n
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
  puts "Current: #{i+1}"
  sum += sg(i+1)
  puts "Cache Size: #{@sf_results.size}"
end
puts sum
