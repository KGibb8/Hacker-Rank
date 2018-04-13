input = gets.split(" ").map(&:to_i)
n = input[0]; m = input[1]
if ( n > 3 && n < (10 ** 7) ) || ( m > 1 && m < 2 * (10 ** 5) )
  array = Array.new(n, 0)
  m.times do
    update = gets.split(" ").map(&:to_i)
    a = update[0]-1; b = update[1]-1; k = update[2]
    if 1 < a && a < b && b < n
      if 0 < k && k < (10**9)
        array.each_with_index do |x, i|
           array[i] += k if i >= a && i <= b
        end
      end
    end
  end
  puts array.max
end

# Expect answer for algorithmic_crush.txt to be 7542539201
