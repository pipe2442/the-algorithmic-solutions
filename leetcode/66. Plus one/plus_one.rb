def plus_one(digits)
  number = (digits.join.to_i + 1).to_s.split('').map { |e| e.to_i }
end

puts plus_one([1,2,3])

# Input: digits = [9]
# Output: [1,0]