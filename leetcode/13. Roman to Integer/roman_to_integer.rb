# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman_numerals = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000
  }

  final_number = 0
  my_array = s.split('')
  last_index = my_array.length - 1

  my_array.each_with_index do |char, index|
    current_number = roman_numerals[char.to_sym]
    next_number = index < last_index ? roman_numerals[my_array[index + 1].to_sym] : 0

    if current_number < next_number
      final_number -= current_number
    else
      final_number += current_number
    end
  end

  final_number
end

puts roman_to_int("MCMXCIV")

# Input: s = "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.