import XCTest

import TimestampedTests

var tests = [XCTestCaseEntry]()
tests += TimestampedTests.allTests()
XCTMain(tests)
