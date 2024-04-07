function romanToInt(s) {
  const romanNumerals = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000,
  };

  let finalNumber = 0;
  const myArray = s.split("");
  const lastIndex = myArray.length - 1;

  myArray.forEach((char, index) => {
    const currentNumber = romanNumerals[char];
    const nextNumber =
      index < lastIndex ? romanNumerals[myArray[index + 1]] : 0;

    if (currentNumber < nextNumber) {
      finalNumber -= currentNumber;
    } else {
      finalNumber += currentNumber;
    }
  });

  return finalNumber;
}

console.log(romanToInt("MCMXCIV"));

// Input: s = "MCMXCIV"
// Output: 1994
// Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
