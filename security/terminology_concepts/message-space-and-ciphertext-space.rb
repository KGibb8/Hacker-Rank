# To better understand Message Spaces and Cipher Spaces, we will first explain the alphabet of definitions.

# A denotes a finite set called the alphabet of definition. For example, is the binary alphabet. It is a frequently used alphabet of definition.

# M denotes a set called message space. consists of strings composed of symbols from an alphabet of definition.

# C denotes a set called the ciphertext space. C consists of strings composed of symbols from an alphabet of definition 
# which might or might not differ from that of M.

# In this task, your alphabet of definition is A = {0,1,2,...,9}
# M and C are both sets of all strings consisting of decimal digits.
# Given a coded message, you need to find the new message you obtain if you shift each digit 
# in the message string. You must shift to the right, and it is cyclic.

puts gets.strip.split("").map{|c| i = c.to_i + 1; i == 10 ? 0 : i }.join("")
