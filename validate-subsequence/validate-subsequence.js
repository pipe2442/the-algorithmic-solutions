function isValidSubsequence(array, sequence) {
  let counter = 0;
  array.forEach((number) => {
    if (number === sequence[counter]) counter += 1;
  });

  return counter === sequence.length ? true : false;
}

console.log(isValidSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [1, 6, -1, 10]))
