require 'pry'

# HackerLand National Bank has a simple policy for warning clients about possible fraudulent account activity.
# If the amount spent by a client on a particular day is greater than or equal to 2 X the client's median spending
# for the last D days, they send the client a notification about potential fraud. The bank doesn't send the client
# any notifications until they have at least D prior days of transaction data.

# Given the value of D and a client's total daily expenditures for a period of N days, find and print the number of
# times the client will receive a notification over all N days.

n_a_d = gets.strip.split(" ").map(&:to_i)
n = n_a_d[0]; d = n_a_d[1];
expenditure = gets.strip.split(" ").map(&:to_i)

class Array
  def median
    sorted = self.sort
    size = sorted.size
    # Always gets median if even or odd length array
    (sorted[(size - 1) / 2] + sorted[size / 2]) / 2.0
  end
end

if (1 <= n) && (n <= 2 * (10**5))
  if (1 <= d) && (d <= n)
    notifications = 0
    expenditure.each_with_index do |day, i|
      next if i < d
      days = expenditure[i-d..i-1]
      median = days.median
      i >= (2 * median) ? notifications += 1 : nil
    end
    puts notifications
  end
end
