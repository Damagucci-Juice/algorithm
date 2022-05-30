//
//  MultipleScalar.swift
//  MultipleScalar
//
//  Created by YEONGJIN JANG on 2022/05/30.
//

import XCTest

class MultipleScalar: XCTestCase {
    func testSolution() {
        XCTAssertEqual(solution([1,2,3,4], [-3,-1,0,2]), 3)
        XCTAssertEqual(solution([-1,0,1], [1,0,-1]), -2)
    }
}

