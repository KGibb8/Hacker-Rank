
# Before we jump into security concepts, let us familiarize ourselves with the mathematical background required for it.

# Set X is a collection of elements. Here, X is one such example. A collection of integers is also a set.

# Given two sets, X and Y, we define a function that maps every element in X to precisely 1 element in Y.

# If X = {1,2,3} and Y = {α,β,γ,δ}, the function f will return:

# f(1) = α, f(2) = γ, and f(3) = δ.

# Let us define a function f1(x) = xr, where x ∈ X and xr ∈ Y.
# Here, xr is defined as the remainder of x when divided by 11.

# Your task is to complete the function that takes the input and returns 

def function(x)
  x % 11
end
