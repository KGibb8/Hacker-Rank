require 'pry'

def which_boxes?(n, k, b)
  combos = (1..k).to_a.combination(b).to_a
  found = combos.find{|com| n == (com.inject(0){|s, v| s += v}) }
  found ? found.join(" ") : -1
end

t = 1 # gets.strip.to_i


# Test Case 1:
t = 4
trips = [[12, 8, 3], [10, 3, 3], [9, 10, 2], [9, 10, 2]]
(1..t).each_with_index do |trip, i|
  trip = trips[i] # gets.strip.split(" ").map(&:to_i)
  n = trip[0]; k = trip[1]; b = trip[2]
  puts which_boxes?(n, k, b)
end


# Test Case 6:
test = File.open('bonetrousle_test-case-06.txt')
t = test.first.to_i
(1..t).each do
  trip = test.first.strip.split(" ").map(&:to_i)
  n = trip[0]; k = trip[1]; b = trip[2]
  next if b >= (10 ** 5) || b < 1
  next if n >= (10 ** 18) || n < 1
  next if k >= (10 ** 18) || k < 1
  puts which_boxes?(n, k, b)
end

# Expected output
# -1
# 299 1
# -1
# 99 100 101
# 4 1 2
# -1
# 3
# 2 1
# 148 150
# 149 150
# -1
# -1
# 297 1 2
# 299 1
# 300
# 1
# -1
# 47 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22
# -1
# 24 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
