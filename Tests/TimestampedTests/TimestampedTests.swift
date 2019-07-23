import XCTest
import Timestamped

final class TimestampedTests: XCTestCase {

  func testCreatedLater() {
    let referenceDate = Date()
    let timestamped = Timestamped(value: "abc", created: referenceDate)

    XCTAssertTrue(timestamped.createdLater(than: Date.distantPast))
    XCTAssertTrue(timestamped.createdLater(than: referenceDate.addingTimeInterval(-1)))
    XCTAssertFalse(timestamped.createdLater(than: referenceDate))
    XCTAssertFalse(timestamped.createdLater(than: referenceDate.addingTimeInterval(1)))
    XCTAssertFalse(timestamped.createdLater(than: Date.distantFuture))
  }

  func testCreatedBefore() {
    let referenceDate = Date()
    let timestamped = Timestamped(value: "abc", created: referenceDate)

    XCTAssertFalse(timestamped.createdBefore(than: Date.distantPast))
    XCTAssertFalse(timestamped.createdBefore(than: referenceDate.addingTimeInterval(-1)))
    XCTAssertFalse(timestamped.createdBefore(than: referenceDate))
    XCTAssertTrue(timestamped.createdBefore(than: referenceDate.addingTimeInterval(1)))
    XCTAssertTrue(timestamped.createdBefore(than: Date.distantFuture))
  }
}
