# A keyword transposition cipher is a method of choosing a monoalphabetic substitution to encode a message.
# The substitution alphabet is determined by choosing a keyword, arranging the remaining letters of the alphabet
# in columns below the letters of the keyword, and then reading back the columns in the alphabetical order of the
# letters of the keyword


def decipher(ciphertext, key)
  alphabet = ("A".."Z").to_a
  remaining = alphabet - key
  grid = key.map{ |k| [k] }
  remaining.each_with_index { |l, i| grid[i % key.length] << l }
  substitution = grid.sort.flatten!
  ciphertext.inject("") do |s, l|
    l == " " ? s += " " : s += alphabet[substitution.index(let)]
  end
end

tests = gets.to_i - 1
(0..tests).each do |test|
  key = gets.strip.upcase.split("").uniq
  ciphertext = gets.strip.upcase.split("")
  puts decipher(ciphertext, key)
end
