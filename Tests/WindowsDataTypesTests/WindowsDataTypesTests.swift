import XCTest
@testable import WindowsDataTypes

final class WindowsDataTypesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(WindowsDataTypes().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
