#   There's an algorithms tournament taking place in which teams of programmers
#   compete against each other to solve algorithmic problems as fast as possible.
#   Teams compete in a round robin, where each team faces off against all other
#   teams. Only two teams compete against each other at a time, and for each
#   competition, one team is designated the home team, while the other team is the
#   away team. In each competition there's always one winner and one loser; there
#   are no ties. A team receives 3 points if it wins and 0 points if it loses. The
#   winner of the tournament is the team that receives the most amount of points.

#   Given an array of pairs representing the teams that have competed against each
#   other and an array containing the results of each competition, write a
#   function that returns the winner of the tournament. The input arrays are named
#   <span>competitions</span> and <span>results</span>, respectively. The
#   <span>competitions</span> array has elements in the form of
#   <span>[homeTeam, awayTeam]</span>, where each team is a string of at most 30
#   characters representing the name of the team. The <span>results</span> array
#   contains information about the winner of each corresponding competition in the
#   <span>competitions</span> array. Specifically, <span>results[i]</span> denotes
#   the winner of <span>competitions[i]</span>, where a <span>1</span> in the
#   <span>results</span> array means that the home team in the corresponding
#   competition won and a <span>0</span> means that the away team won.

#   It's guaranteed that exactly one team will win the tournament and that each
#   team will compete against all other teams exactly once. It's also guaranteed
#   that the tournament will always have at least two teams.

# Sample Input:
#   competitions = [
#     ["HTML", "C#"],
#     ["C#", "Python"],
#     ["Python", "HTML"],
#   ]
# results = [0, 0, 1]
# 
# Sample Output:
#   "Python"
#   C# beats HTML, Python Beats C#, and Python Beats HTML.
#   HTML - 0 points 
#   C# -  3 points
#   Python -  6 points




def tournamentWinner(competitions, results)
  board = {}
  competitions.each_with_index do |match, index|
    winner = results[index] == 1 ? 0 : 1
    board[match[winner].to_sym] ? board[match[winner].to_sym] += 3 : board[match[winner].to_sym] = 3
  end
  return board.max.first
end

puts tournamentWinner([
                        ['HTML', 'C#'],
                        ['C#', 'Python'],
                        ['Python', 'HTML']
                      ], [0, 0, 1])
