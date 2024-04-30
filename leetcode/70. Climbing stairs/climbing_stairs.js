// Example 1:

// Input: n = 2
// Output: 2
// Explanation: There are two ways to climb to the top.
// 1. 1 step + 1 step
// 2. 2 steps

// Example 2:

// Input: n = 3
// Output: 3
// Explanation: There are three ways to climb to the top.
// 1. 1 step + 1 step + 1 step
// 2. 1 step + 2 steps
// 3. 2 steps + 1 step

// 1

// 1

// 4

// 1 1 1 1 - 2 1 1 - 1 1 2 - 1 2 1 - 2 2

// [1, 2, 3, 5, 8]
const climbing_stairs = (n) => {
  if (n === 1) return 1;
  if (n === 2) return 2;

  let steps = [1, 2];

  for (let i = 2; i < n; i++) {
    steps[i] = steps[i - 1] + steps[i - 2];
  }

  return steps[n - 1];
};

console.log(climbing_stairs(4));
