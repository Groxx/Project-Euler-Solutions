#!/usr/bin/env ruby

=begin original problem
http://projecteuler.net/index.php?section=problems&id=22

[note: file located at: "../data/Problem 22 - names.txt"]
Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938  53 = 49714.

What is the total of all the name scores in the file?
=end

@array

def readToArray(filename="")
  @array = []
  File.new(filename).readlines.each do |line|
    @array += line.split(" ")
  end
end

def get_name_score(index)
  score = 0
  @array[index].size.times do |i|
    score += (@array[index][i] - 64)
  end
  return score*(index+1)
end

readToArray("../data/Problem 22 - names.txt")
@array.sort!

score = 0
(@array.size).times do |i|
  score += get_name_score(i)
end
puts score

#note: modified names.txt to use blank space as a delimiter, rather than write code to handle quoted-CSV data.
#  I believe this is in spirit with the challenge, as this is part of my solution method.