def isValidSubsequence(array, sequence)
  counter = 0

  array.each do |number|
    if number == sequence[counter]
      counter += 1
    end
  end

  counter == sequence.length ? true : false
end

puts isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [1, 6, -1, 10])