#!/usr/bin/env ruby
#
#  Created by  on 2009-05-09.
#  Copyright (c) 2009. All rights reserved.

=begin
Problem:
  Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.
  How many routes are there through a 20x20 grid?

My Notes:
  Solve with a Pascal's Triangle.
    Each node = an intersection.
    Each subsequent node = sum of previously-connected nodes
  Code a pascal's triangle, and solve for opposite corner.
=end