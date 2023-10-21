function twoNumberSum(array, targetSum) {
    const seenNumbers = new Set();

    for (let i = 0; i < array.length; i++) {
        const currentNumber = array[i];
        const complement = targetSum - currentNumber;

        if (seenNumbers.has(complement)) {
            return [currentNumber, complement];
        }

        seenNumbers.add(currentNumber);
    }

    return [];
  }
  
  console.log(twoNumberSum([3, 5, -4, 8, 11, 1, -1, 6], 10))
  