# For this task, consider a message that consists of decimal digits and a key, e,
# which operates by shifting each digit by places. Find the corresponding ciphertext.

message = gets.strip.split("")
key = gets.to_i
puts message.map{ |c| i = c.to_i + key; i >= 10 ? : i - 10 : i }.join("")
