import XCTest

class AddPlusMinus: XCTestCase {

    func testSolution() {
        XCTAssertEqual(solution([1,2,3], [false,false,true]), 0)
        XCTAssertEqual(solution([4,7,12], [true,false,true]), 9)
    }

}
