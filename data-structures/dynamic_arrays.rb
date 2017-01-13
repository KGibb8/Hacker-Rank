input = gets.strip.split(" ").map(&:to_i)
n = input[0]
q = input[1]
lastAns = 0
sequences = (0...n).map{[]}

(0...q).each do
  seqList = gets.strip.split(" ").map(&:to_i)
  query_no = seqList[0]
  x = seqList[1]
  y = seqList[2]
  index = (x ^ lastAns) % n
  sequence = sequences[index]
  if query_no == 1
    sequence << y
  else
    lastAns = sequence[y % sequence.length]
    puts lastAns
  end
end
