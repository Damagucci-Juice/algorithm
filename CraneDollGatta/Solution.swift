import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var count = 0
    var answers: [Int] = []
    var tempBoard = board
    for i in moves {
        let tartgetIndex = i - 1
        for j in 0..<board.count {
            if tempBoard[j][tartgetIndex] != 0 {
                if (answers.last ?? -1) == tempBoard[j][tartgetIndex] {
                    answers.removeLast()
                    tempBoard[j][tartgetIndex] = 0
                    count += 2
                    break
                } else {
                    answers.append(tempBoard[j][tartgetIndex])
                    tempBoard[j][tartgetIndex] = 0
                    break
                }
            }
        }
    }

    return count
}
