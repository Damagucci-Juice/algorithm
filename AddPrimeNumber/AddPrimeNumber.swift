//
//  AddPrimeNumber.swift
//  AddPrimeNumber
//
//  Created by YEONGJIN JANG on 2022/05/30.
//

import XCTest

class AddPrimeNumber: XCTestCase {
    func testSolution() {
        XCTAssertEqual(solution([1,2,3,4]), 1)
        XCTAssertEqual(solution([1,2,7,6,4]), 4)
    }
}
