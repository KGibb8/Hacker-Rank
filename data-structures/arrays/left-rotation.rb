d = gets.strip.split(" ").map(&:to_i).last
array = gets.strip.split(" ").map(&:to_i)

d.times { num = array.shift; array.push(num) }

puts array.join(" ")
