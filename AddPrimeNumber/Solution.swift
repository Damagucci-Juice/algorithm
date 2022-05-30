import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    func isPrime(number: Int) -> Bool {
        return number > 1 && !(2..<number).contains { number % $0 == 0 }
    }
    for i in stride(from: 0, to: nums.count, by: 1) {
        for j in stride(from: i + 1, to: nums.count, by: 1) {
            for k in stride(from: j + 1, to: nums.count, by: 1) {
                print(i)
                print(j)
                print(k)
                answer += isPrime(number: nums[i] + nums[j] + nums[k]) ? 1 : 0
            }
        }
    }
    return answer
}
