#   Given an array of positive integers representing the values of coins in your
#   possession, write a function that returns the minimum amount of change (the
#   minimum sum of money) that you <b>cannot</b> create. The given coins can have
#   any positive integer value and aren't necessarily unique (i.e., you can have
#   multiple coins of the same value).

#   For example, if you're given <span>coins = [1, 2, 5]</span>, the minimum
#   amount of change that you can't create is <span>4</span>. If you're given no
#   coins, the minimum amount of change that you can't create is <span>1</span>.

# Sample Input:
#   coins = [5, 7, 1, 1, 2, 3, 22]

# Sample Output:
##   20

def non_constructible_change(coins)
  return 1 if coins.empty?

  sorted_coins = coins.sort
  total = 0

  sorted_coins.each do |coin|
    return total + 1 if coin > total + 1
    total += coin
  end

  total + 1
end

puts non_constructible_change([1, 1, 1, 1, 1])
