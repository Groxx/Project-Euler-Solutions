#!/usr/bin/env ruby

@array = []
@triangle = []

def read_to_array(filename="")
  @array = []
  File.new(filename).readlines.each do |line|
    @array += line.split('"')
  end
  @array.delete_if{|i| i == ","}
  @array.delete_at(0) # catches empty at beginning.  "For Speed", consider removing this, and skipping the first.
end

def triangles_up_to(num)
  while(true)
    if @triangle.empty? || @triangle.last <= num
      @triangle << 0.5*@triangle.size*(@triangle.size+1)
    else
      break
    end
  end
end

def get_name_score(index)
  score = 0
  
  @array[index].size.times do |i|
    score += (@array[index][i] - 64)
  end
  
  return score
end

def name_is_triangle(index)
  val = get_name_score(index)
  
  if @triangle.empty? || @triangle.last <= val
    triangles_up_to(val)
  end
  
  return @triangle.include?(val)
end

read_to_array("Problem 42 - words.txt")

count = 0
@array.size.times do |i|
  if name_is_triangle(i)
    count += 1
  end
end
puts "Triangle words: #{count}"