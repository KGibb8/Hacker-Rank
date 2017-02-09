# Is going to be changed in next explosion
def find_craters
  craters = []
  grid.each_with_index do |arr, y|
    arr.each_with_index do |pos, x|
      if pos == 0
        craters << [y, x]
        craters << [y-1, x]
        craters << [y+1, x]
        craters << [y, x+1]
        craters << [y, x-1]
      end
    end
  end
  craters
end

def detonation?(turn)
  turn.to_i % 3 == 0
end

## We've got to create a transaction log to cache future actions ##
transactions = []

vals = gets.strip.split(" ").map(&:to_i)
r = vals[0]; c = vals[1]; n = vals[2];

# Bomberman arbitrarily plants bombs in some of the cells.
grid = (0...r).inject([]){|a, v| a << gets.strip.split }

# One turn per second
# Bomberman spends the first second doing nothing
t = 1

if t <= n
  # Seconds 2 & 3 to repeat
  loop do
    transactions << find_craters

    # Bomberman plants bombs in all the empty cells during his second second
    t += 1

    if detonation?(t)
      exploding = transactions.shift
    end
    # DO STUFF HERE

    break if n == t
    # In his third second, Bomberman sits back and watches all the bombs he planted 3 seconds ago detonate
    t += 1

    # DO STUFF HERE

    break if n == t
  end
end

puts grid
