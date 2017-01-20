require 'pry'

def sum_quadrant(matrix, n)
  m = 2 * n
  sum = 0
  for i in 0...n
    for j in 0...n
      sum += [
        matrix[i][j],
        matrix[i][m-1-j],
        matrix[m-1-i][j],
        matrix[m-1-i][m-1-j]
      ].max
    end
  end
  sum
end

# q = gets.strip.to_i
# (0...q).each do |query|
#   n = gets.strip.to_i
#   matrix = (0...(2 ** n)).inject([]) {|arr, l| arr << gets.strip.split(" ").map(&:to_i) }
#   puts sum_quadrant(matrix, n)
# end

# Test Case 1:

q = 1
n = 2
matrix = [[112, 42, 83, 119], [56, 125, 56, 49], [15, 78, 101, 43], [62, 98, 114, 108]]
puts sum_quadrant(matrix, n)

# Test Case 4:

test = File.open('flipping-the-matrix_test-case-04.txt')
q = test.first.strip.to_i
(0...q).each do |query|
  n = test.first.strip.to_i
  matrix = (0...(2 * n)).inject([]) {|arr, l| arr << test.first.strip.split(" ").map(&:to_i) }
  puts sum_quadrant(matrix, n)
end

