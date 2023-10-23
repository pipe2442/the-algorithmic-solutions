function nonConstructibleChange(coins) {
  const totalCoins = coins.reduce((accumulator, currentValue) => {
    return accumulator + currentValue;
  }, 0);

  const sortedCoins = coins.sort((a, b) => a - b);
  let total = 0;
  let answer = 0;
  for (let i = 0; i < sortedCoins.length; i++) {
    const currentCoin = sortedCoins[i];

    if (currentCoin > total + 1) {
      answer = total + 1;
      break;
    }
    total += currentCoin;
  }

  if (answer === 0) {
    return totalCoins + 1;
  }

  return answer;
}

nonConstructibleChange([1, 1, 1, 1, 1]);
