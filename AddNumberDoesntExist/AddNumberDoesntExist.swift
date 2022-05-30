//
//  AddNumberDoesntExist.swift
//  AddNumberDoesntExist
//
//  Created by YEONGJIN JANG on 2022/05/30.
//

import XCTest

class AddNumberDoesntExist: XCTestCase {

    func testSolution() {
        XCTAssertEqual(solution([1,2,3,4,6,7,8,0]), 14)
        XCTAssertEqual(solution([5,8,4,0,6,7,9]), 6)
    }

}
