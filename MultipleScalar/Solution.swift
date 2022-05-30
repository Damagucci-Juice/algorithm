
//
//  Solution.swift
//  MultipleScalar
//
//  Created by YEONGJIN JANG on 2022/05/30.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var result: Int = 0
    a.enumerated().forEach {
        let multiple:Int = b[$0.offset] * $0.element
        result += multiple
    }
    return result
}

func isPrime(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number % $0 == 0 }
}
