function pageCount(n, p) {
  let turnsFromFront = 0;
  for (let i = 1; i < p; i += 2) {
    turnsFromFront++;
  }

  let turnsFromBack = 0;
  let initialPage = n % 2 === 0 ? n : n - 1;
  for (let i = initialPage; i > p; i -= 2) {
    turnsFromBack++;
  }
  console.log(`de frente: ${turnsFromFront}`);
  console.log(`desde el final del libro: ${turnsFromBack}}`);
  return turnsFromFront < turnsFromBack ? turnsFromFront : turnsFromBack;
}

console.log(pageCount(6, 2));
