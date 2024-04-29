const birthdayCakeCandles = (candles) => {
  let counter = 0;
  let maxNumber = 0;

  candles.forEach((currentCandle) => {
    if (currentCandle > maxNumber) {
      maxNumber = currentCandle;
      counter = 1; // la idea aqui es reiniciar el contador
    } else if (currentCandle === maxNumber) {
      counter += 1;
    }
  });

  return counter;
};

console.log(birthdayCakeCandles([5, 4, 3, 5, 3, 4, 5]));
