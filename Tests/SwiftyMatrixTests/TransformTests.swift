import XCTest
import SwiftyMatrix
import SwiftyVector

class TransformTests : XCTestCase {
    func testScaling() {
        do {
            let a: Vector2 = [2, 3]
            let s = Matrix2x2.scaling(by: [5, 7])
            XCTAssertEqual(s * a, [10, 21])
        }
        
        do {
            let a: Vector3 = [2, 3, 1]
            let s = Matrix3x3.scaling2(by: [5, 7])
            XCTAssertEqual(s * a, [10, 21, 1])
        }
        
        do {
            let a: Vector3 = [2, 3, 5]
            let s = Matrix3x3.scaling(by: [7, 11, 13])
            XCTAssertEqual(s * a, [14, 33, 65])
        }
        
        do {
            let a: Vector4 = [2, 3, 5, 1]
            let s = Matrix4x4.scaling3(by: [7, 11, 13])
            XCTAssertEqual(s * a, [14, 33, 65, 1])
        }
    }
    
    func testRotation() {
        do {
            let a: Vector2 = [2, 3]
            let r = Matrix2x2.rotation(by: .pi / 2)
            XCTAssertEqual(r * a, [-3, 2], accuracy: 1.0e-5)
        }
        
        do {
            let a: Vector3 = [2, 3, 1]
            let r = Matrix3x3.rotation2(by: -.pi / 2)
            XCTAssertEqual(r * a, [3, -2, 1], accuracy: 1.0e-5)
        }
        
        do {
            let a: Vector3 = [2, 3, 5]
            let rx = Matrix3x3.rotation(by: .pi / 2, around: [1, 0, 0])
            XCTAssertEqual(rx * a, [2, -5, 3], accuracy: 1.0e-5)
            let ry = Matrix3x3.rotation(by: .pi / 2, around: [0, 1, 0])
            XCTAssertEqual(ry * a, [5, 3, -2], accuracy: 1.0e-5)
            let rz = Matrix3x3.rotation(by: .pi / 2, around: [0, 0, 1])
            XCTAssertEqual(rz * a, [-3, 2, 5], accuracy: 1.0e-5)
        }
        
        do {
            let a: Vector4 = [2, 3, 5, 1]
            let rx = Matrix4x4.rotation3(by: -.pi / 2, around: [1, 0, 0])
            XCTAssertEqual(rx * a, [2, 5, -3, 1], accuracy: 1.0e-5)
            let ry = Matrix4x4.rotation3(by: -.pi / 2, around: [0, 1, 0])
            XCTAssertEqual(ry * a, [-5, 3, 2, 1], accuracy: 1.0e-5)
            let rz = Matrix4x4.rotation3(by: -.pi / 2, around: [0, 0, 1])
            XCTAssertEqual(rz * a, [3, -2, 5, 1], accuracy: 1.0e-5)
        }
    }
}
