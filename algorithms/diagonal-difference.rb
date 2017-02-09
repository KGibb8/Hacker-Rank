# Given a square matrix of size N x N, calculate the absolute difference between the sums of its diagonals

n = gets.strip.to_i
grid = (0...n).to_a.inject([]) do |a, v|
  a << grid.gets.split(" ").map(&:to_i)
end

# Example
n = 3
grid = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]

def left_to_right(grid)
  (0...grid.length).inject(0) do |s, i|
    s += grid[i][i]
  end
end

def right_to_left(grid)
  (0...grid.length).inject(0) do |s, i|
    s += grid[i][grid.length-1-i]
  end
end
a = left_to_right(grid)
b = right_to_left(grid)

puts [a, b].max - [a, b].min

