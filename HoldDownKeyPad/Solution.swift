import Foundation

func getDistance(start: Int, target:Int) -> Int {
    var startPosition = [0,0]
    var destinationPosition = [0,0]
    let keyPad: [[Int]] = [[1,2,3], [4,5,6], [7,8,9], [-1,0,-2]]
    for i in 0..<4 {
        for j in 0..<3 {
            if keyPad[i][j] == start {
                startPosition[0] = i
                startPosition[1] = j
            }
            if keyPad[i][j] == target {
                destinationPosition[0] = i
                destinationPosition[1] = j
            }
        }
    }
    
    var distance = 0
    for i in 0...1 {
        distance += startPosition[i] > destinationPosition[i] ? startPosition[i] - destinationPosition[i] : destinationPosition[i] - startPosition[i]
    }
    return distance
}

func solution(_ numbers:[Int], _ hand:String) -> String {
    var LH = -1
    var RH = -2
    var result = ""
    for n in numbers {
        switch n {
        case 1,4,7:
            LH = n
            result += "L"
            break
        case 3,6,9:
            RH = n
            result += "R"
            break
        default:        // n == 2,5,8,0
            let leftDistance = getDistance(start: LH, target: n)
            let rightDistance = getDistance(start: RH, target: n)
            
            if leftDistance == rightDistance {
                if hand == "right" {
                    RH = n
                    result += "R"
                } else {
                    LH = n
                    result += "L"
                }
                break
            }
            
            if leftDistance < rightDistance {
                LH = n
                result += "L"
            } else {
                RH = n
                result += "R"
            }
            break
        }
    }
    return result
}
