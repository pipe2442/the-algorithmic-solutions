require 'set'

def twoNumberSum(array, target_sum)
  seen_numbers = Set.new

  array.each do |number|
    complement = target_sum - number

    if seen_numbers.include?(complement)
      return [number, complement]
    end

    seen_numbers.add(number)
  end

  return []
end

puts twoNumberSum([3, 5, -4, 8, 11, 1, -1, 6], 10)