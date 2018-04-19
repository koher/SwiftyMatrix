import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SwiftyMatrixTests.allTests),
        testCase(ConcreteTests.allTests),
    ]
}
#endif
