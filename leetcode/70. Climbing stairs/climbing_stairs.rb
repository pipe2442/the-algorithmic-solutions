# You are climbing a staircase. It takes n steps to reach the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 

# Example 1:

# Input: n = 2
# Output: 2
# Explanation: There are two ways to climb to the top.___
# 1. 1 step + 1 step
# 2. 2 steps

# Example 2:

# Input: n = 3
# Output: 3
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step

 

# Constraints:

#     1 <= n <= 45

def climb_stairs(n)

  # 7 = 21
  # 6 = 13
  # 5 = 8
  # 4 = 5
  # 3 = 3
  # 2 = 2

  if n == 1
    return 1
  end

  if n == 2
    return 2
  end

  if n == 3
    return 3
  end

  array = [2, 3]
  iterations = n - 3
  final_number = 0
  iterations_counter = iterations

  iterations.times do |index|
    array_last = array.length - 1 
    array_before_last = array.length - 2
    sum = array[array_last] + array[array_before_last]

    if iterations_counter == 1
      final_number = sum
    else 
      array.push(sum)
      iterations_counter -= 1
    end
  end
  final_number
end

puts climb_stairs(5)









 