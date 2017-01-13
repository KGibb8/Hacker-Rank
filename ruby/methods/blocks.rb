def factorial
  yield
end

puts "Compute n!"
n = gets.to_i
factorial do
  puts (1...n).to_a.reverse.inject(n){ |s, v| s *= v }
end
