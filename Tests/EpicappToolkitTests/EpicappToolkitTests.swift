import XCTest
@testable import EpicappToolkit

final class EpicappToolkitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(EpicappToolkit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
