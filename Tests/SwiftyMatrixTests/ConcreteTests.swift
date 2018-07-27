import XCTest
import SwiftyMatrix
import SwiftyVector

class ConcreteTests : XCTestCase {
    func testMatmul() {
        do {
            let a: Matrix2x2 = [
                [1, 2],
                [3, 4],
            ]
            let b: Matrix2x2 = [
                [5, 6],
                [7, 8],
            ]
            let r: Matrix2x2 = a * b
            XCTAssertEqual(r, [
                [19, 22],
                [43, 50],
            ])
        }
        
        do {
            let a: Matrix2x4 = [
                [1, 2, 3, 4],
                [5, 6, 7, 8],
            ]
            let b: Matrix4x3 = [
                [ 9, 10, 11],
                [12, 13, 14],
                [15, 16, 17],
                [18, 19, 20],
            ]
            let r: Matrix2x3 = a * b
            XCTAssertEqual(r, [
                [150, 160, 170],
                [366, 392, 418],
            ])
        }
    }
    
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
        ("testMatmul", testMatmul),
        ("testCodable", testCodable),
        ("testDescription", testDescription),
    ]
}
