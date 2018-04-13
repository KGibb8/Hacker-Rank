array = gets.strip.split(" ").map(&:to_i)
max = 0; min = 0
copy = array.dup
length = array.length
(0...length-1).each do |v|
  maximum = array.max
  minimum = copy.min
  index_max = array.index(maximum)
  index_min = copy.index(minimum)
  array.delete_at(index_max)
  copy.delete_at(index_min)
  max += maximum
  min += minimum
end

puts min.to_s + " " + max.to_s

