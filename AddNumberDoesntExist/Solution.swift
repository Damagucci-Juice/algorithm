import Foundation

func solution(_ numbers:[Int]) -> Int {
    var fullSet: Set<Int> = [1,2,3,4,5,6,7,8,9]
    var answer = 0
    numbers.reversed().forEach { num in
        fullSet.remove(num)
    }
    fullSet.forEach { answer += $0 }
    return answer
}
