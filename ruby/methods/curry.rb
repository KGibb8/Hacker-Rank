# Currying is a technique in which a function accepts parameters and turns it into a sequence of functions, each of them take 1 parameter.

#   Example :-

multiply_numbers = -> (x,y) do
  x*y
end

doubler = multiply_numbers.curry.(2)
tripler = multiply_numbers.curry.(3)

puts doubler.(4)    #8
puts tripler.(4)    #12

# In the above example, lambda take two parameters , and return the product of the two.
# multiply_numbers.curry.(2) returns a lambda which takes only one parameter necessary for calculation.

power_function = ->(x, y) { (x) ** y }

base = gets.to_i
raise_to_power = power_function.curry.(base)

power = gets.to_i
puts raise_to_power.(power)
