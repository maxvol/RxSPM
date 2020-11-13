import XCTest
@testable import RxSPM

final class RxTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(RxSPM().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
