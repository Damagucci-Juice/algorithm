import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    let answer: Int = {
        var array: [Int] = []
        for (index, sign) in signs.enumerated() {
            let signNumber: Int = sign ? 1 : -1
            array.append(absolutes[index] * signNumber)
        }
        let sum = array.reduce(0) { $0 + $1 }
        return sum
    }()
    return answer
}
