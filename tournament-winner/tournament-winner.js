function tournamentWinner(competitions, results) {
  let board = {};
  let winnerTeam = "";
  let maxPoints = 0;
  competitions.forEach((match, index) => {
    const winner = results[index] == 1 ? 0 : 1;
    board[match[winner]]
      ? (board[match[winner]] += 3)
      : (board[match[winner]] = 3);
  });

  for (team in board) {
    if (board[team] > maxPoints) {
      winnerTeam = team;
      maxPoints = board[team];
    }
  }

  return winnerTeam;
}

console.log(
  tournamentWinner(
    [
      ["HTML", "C#"],
      ["C#", "Python"],
      ["Python", "HTML"],
    ],
    [0, 0, 1]
  )
);
