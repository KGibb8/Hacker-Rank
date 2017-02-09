def factorial
  yield
end

puts "Compute n!"
n = gets.to_i
factorial do
  puts (1...n).to_a.reverse.inject(n){ |s, v| s *= v }
end

module Enumerable
  def custom_inject(result, &block)
    if block_given
      yield
    end
  end
end
