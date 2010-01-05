#!/usr/bin/env ruby

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

readToArray("Problem 22 - names.txt")
@array.sort!

score = 0
(@array.size).times do |i|
  score += get_name_score(i)
end
puts score

#note: modified names.txt to use blank space as a delimiter, rather than write code to handle quoted-CSV data.
#  I believe this is in spirit with the challenge, as this is part of my solution method.