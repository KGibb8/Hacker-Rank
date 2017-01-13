n = gets.strip.to_i
strings = (1..n).inject([]){|arr, num| arr << gets.strip}
q = gets.strip.to_i
q.times { string = gets.strip; puts strings.select{|s| s == string}.count }
