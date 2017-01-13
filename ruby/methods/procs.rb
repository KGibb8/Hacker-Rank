# The square_of_sum method computes the sum of the elements in an input array and returns the square of the summed elements.

def square_of_sum(array, proc_square, proc_sum)
  sum = proc_sum.call(array)
  proc_square.call(sum)
end

proc_square_number = Proc.new { |n| n ** 2 }
proc_sum_array = Proc.new { |a| a.inject(0){ |s, v| s += v } }
my_array = gets.split(" ").map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)
