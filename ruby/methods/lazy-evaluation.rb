# Lazy evaluation is an evaluation strategy that delays the assessment of an expression until its value is needed.

# Ruby  2.0 introduced a lazy enumeration feature. Lazy evaluation increases performance by avoiding needless calculations,
# and it has the ability to create potentially infinite data structures.

# Example:

power_array = -> (power, array_size) do
  1.upto(Float::INFINITY).lazy.map { |x| x**power  }.first(array_size)
end

puts power_array.(2 , 4)    #[1, 4, 9, 16]
puts power_array.(2 , 10)   #[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
puts power_array.(3, 5)     #[1, 8, 27, 64, 125]

# In this example, lazy avoids needless calculations to compute power_array.
# If we remove lazy from the above code, then our code would try to compute all ranging from to Float::INFINITY.
# To avoid timeouts and memory allocation exceptions, we use lazy. Now, our code will only compute up to first(array_size).

# Your task is to print an array of the first palindromic prime numbers.

def is_palindrome?(n)
  n.to_s == n.to_s.reverse!
end

def is_prime?(n)
  is_prime = true
  n == 1 ? is_prime = false : nil
  n == 2 ? is_prime = true : nil
  for i in 2..Math.sqrt(n)
    n % i == 0 ? is_prime = false : nil
  end
  is_prime
end

palindromic_array = -> (array_size) do
  1.upto(Float::INFINITY).lazy.select { |n| is_palindrome?(n) && is_prime(n) }.first(array_size.to_i)
end

print palindromic_array.(gets.strip.to_i)


