import XCTest
import Timestamped

final class TimestampedTests: XCTestCase {

  func testCreatedLater() {
    let referenceDate = Date()
    let timestamped = Timestamped(value: "abc", created: referenceDate)

    XCTAssertTrue(timestamped.createdAfter(Date.distantPast))
    XCTAssertTrue(timestamped.createdAfter(referenceDate.addingTimeInterval(-1)))
    XCTAssertFalse(timestamped.createdAfter(referenceDate))
    XCTAssertFalse(timestamped.createdAfter(referenceDate.addingTimeInterval(1)))
    XCTAssertFalse(timestamped.createdAfter(Date.distantFuture))
  }

  func testCreatedBefore() {
    let referenceDate = Date()
    let timestamped = Timestamped(value: "abc", created: referenceDate)

    XCTAssertFalse(timestamped.createdBefore(Date.distantPast))
    XCTAssertFalse(timestamped.createdBefore(referenceDate.addingTimeInterval(-1)))
    XCTAssertFalse(timestamped.createdBefore(referenceDate))
    XCTAssertTrue(timestamped.createdBefore(referenceDate.addingTimeInterval(1)))
    XCTAssertTrue(timestamped.createdBefore(Date.distantFuture))
  }
}
