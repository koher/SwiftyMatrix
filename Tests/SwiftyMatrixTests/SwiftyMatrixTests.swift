import XCTest
@testable import SwiftyMatrix

final class SwiftyMatrixTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftyMatrix().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
