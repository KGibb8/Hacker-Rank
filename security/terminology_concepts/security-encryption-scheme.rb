# An encryption scheme consists of a set {Ee : e ∈ K  } and a corresponding set {Dd : d ∈ K} of encrypting and decrypting functions, respectively.
# For each e ∈ K, there is a unique key d ∈ K where Dd = Ee-1.
# An encryption scheme is also called a cipher.
#
# It should be clear that every e is actually a representative of some bijection from M to C.
# In this task, you have to count the number of such bijections and, hence, the number of keys that produce different encryption functions.

# Let us assume that M = {1,2,3} and C = {3,2,1}.

# We can have encryption schemes where 1 can be mapped to 3 or 2 or 1, 2 can be mapped to the remaining two, and 1 can be mapped to the unmapped one.

# This accounts for 3 * 2 * 1 = 6 such encryption functions.

n = gets.strip.to_i
puts (1..n).inject(1){ |s, v| s *= v }
