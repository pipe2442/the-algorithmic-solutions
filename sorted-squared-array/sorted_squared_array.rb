#   Write a function that takes in a non-empty array of integers that are sorted
#   in ascending order and returns a new array of the same length with the squares
#   of the original integers also sorted in ascending order.

# Sample Input:
#   array = [1, 2, 3, 5, 6, 8, 9]

# Sample Output:
#   [1, 4, 9, 25, 36, 64, 81]

# def sortedSquaredArray(array)
#   squared_array = array.map { |number| number ** 2}
#   squared_array.sort
# end

# hash table

# def sorted_squared_array(array)
#   squared_hash = {}

#   array.each do |number|
#     squared_hash[number] = number**2
#   end

#   sorted_squares = squared_hash.values.sort

#   return sorted_squares
# end


require 'byebug'

def sortedSquaredArray(array)
  n = array.length
  result = Array.new(n)
  
  left = 0
  right = n - 1
  index = n - 1

  while left <= right
    left_square = array[left] ** 2
    right_square = array[right] ** 2

    if left_square > right_square
      result[index] = left_square
      left += 1
    else
      result[index] = right_square
      right -= 1
    end
    
    index -= 1
  end

  return result
end

puts sortedSquaredArray([-7, -3, 1, 9, 22, 30])





# Largest Number in Array
# Given an integer n, follow the next rules to fill in a new array result:
# • result array is of size num + 1
# • resut[0] = 0
# • regult[1]= 1
# - result[2 * i] = result[i] when 2 <= 2 * i <= num
# • result[2 * i + 1] = result[i] + result[i + 1] when 2 <= 2 * i + 1 <= num
# Return the largest number in the array result.
# Example:
# Input: n = 7
# Output: 3
# Explanation: The generated array result = [0,1,1, 2,1,3,2, 3], and the largest number is 3.
# A
# Constraints:
#  0 <= n <= 100

def largest_number(n)
  result = [0, 1]

  (2..n).each do |i|
    if i % 2 == 0
      result[i] = result[i / 2]
    else
      result[i] = result[i / 2] + result[(i / 2) + 1]
    end
  end

  result.max
end

# Ejemplo de uso
n = 7
output = largest_number(n)
puts "El número más grande en el arreglo resultante es: #{output}"
