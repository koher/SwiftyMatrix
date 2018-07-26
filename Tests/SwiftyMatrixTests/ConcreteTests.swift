import XCTest
import SwiftyMatrix
import SwiftyVector

class ConcreteTests : XCTestCase {
    func testCodable() {
        do {
            let original: Matrix2x3 = [
                [1, 2, 3],
                [4, 5, 6],
            ]
            let encoded = try JSONEncoder().encode(original)
            let decoded = try JSONDecoder().decode(Matrix2x3.self, from: encoded)
            XCTAssertEqual(decoded, original)
        } catch let error {
            XCTFail("\(error)")
        }
        
        do {
            let decoded = try JSONDecoder().decode(Matrix2x3.self, from: """
            [
                [1, 2, 3],
                [4, 5, 6]
            ]
            """.data(using: .utf8)!)
            XCTAssertEqual(decoded, [
                [1, 2, 3],
                [4, 5, 6],
            ])
        } catch let error {
            XCTFail("\(error)")
        }
    }
    
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
        ("testCodable", testCodable),
        ("testDescription", testDescription),
    ]
}
