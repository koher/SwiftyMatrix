import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SwiftyMatrixTests.allTests),
    ]
}
#endif