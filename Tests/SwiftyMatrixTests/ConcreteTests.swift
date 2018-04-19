import XCTest
import SwiftyMatrix
import SwiftyVector

class ConcreteTests : XCTestCase {
    func testDescription() {
        do {
            let a: Matrix2x3 = [
                [1, 2, 3],
                [4, 5, 6],
            ]
            
            XCTAssertEqual(a.description, """
            [
                [1.0, 2.0, 3.0],
                [4.0, 5.0, 6.0],
            ]
            """)
        }
    }

    static var allTests = [
        ("testDescription", testDescription),
    ]
}
