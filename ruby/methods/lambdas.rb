# There are variables defined below:

# square is a lambda that squares an integer.
# plus_one is a lambda that increments an integer by .
# into_2 is a lambda that multiplies an integer by .
# adder is a lambda that takes two integers and adds them.
# values_only is a lambda that takes a hash and returns an array of hash values.

# lambdas can be written using the -> operator or lambda

square = -> (int) { int ** 2 }

plus_one = -> (int) { int += 1 }

into_2 = -> (int) { int * 2 }

adder = -> (x, y) { x + y }

values_only = -> (h) { h.values }

input_number_1 = 2
input_number_2 = 3
input_hash = eval("{a: 1, b: 2}")

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1); 
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a; p b; p c; p d; p e

