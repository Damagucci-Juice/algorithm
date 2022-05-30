//
//  CraneDollGatta.swift
//  CraneDollGatta
//
//  Created by YEONGJIN JANG on 2022/05/29.
//

import XCTest

class CraneDollGatta: XCTestCase {

    func testSolution() {
        XCTAssertEqual(solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]), 4)
    }
}
