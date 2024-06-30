// You are given an array prices where prices[i] is the price of a given stock on the ith day.

// You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

// Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

// // Input: prices = [7,1,5,3,6,4]
// Output: 5
// Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
// Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell._

// const maxProfit = (prices) => {
//   let profit = 0
//   for(let i = 0; i < prices.length; i++) {
//     for(let j = i + 1; j <  prices.length; j++) {
//       const diff = prices[j] - prices[i]
//       if(diff > profit) {
//         profit = diff
//       }
//     }
//   }
//   return profit
// }

const maxProfit = (prices) => {
  let minPrice = Infinity;
  let maxProfit = 0;

  for (let i = 0; i < prices.length; i++) {
    if (prices[i] < minPrice) {
      minPrice = prices[i];
    } else if (prices[i] - minPrice > maxProfit) {
      maxProfit = prices[i] - minPrice;
    }
  }

  return maxProfit;
}

console.log(maxProfit([7,1,25,2,35,1,4])) // 5