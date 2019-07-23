import XCTest
@testable import Timestamped

final class TimestampedTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Timestamped().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
