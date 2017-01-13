combination = -> (a) { -> (b) { (1..a).to_a.combination(b).to_a.count } }

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)
