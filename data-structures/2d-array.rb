def sum_hourglass(3_by_3)
  top = three_by_three[0]
  middle = three_by_three[1]
  bottom = three_by_three[2]

  top_sum = top.inject(0){|s, n| s += n }
  bottom_sum = bottom.inject(0){|s, n| s += n}

  top_sum + bottom_sum + middle[1]
end

grid = Array.new
5.times { arr = gets.strip; grid << arr.split(" ").map(&:to_i) }
row = 0
col = 0
sums = Array.new
until row > grid.length - 3
  until col_index > grid.length - 3
    3_by_3 = Array.new
    3_by_3 << grid[row][col..col + 2]
    3_by_3 << grid[row + 1][col..col + 2]
    3_by_3 << grid[row + 2][col..col + 2]
    sums << sum_hourglass(3_by_3)
    col += 1
  end
  col = 0
  row += 1
end

puts sums.sort![-1]
