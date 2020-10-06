import XCTest
@testable import WindowsDataTypes

final class EVENT_HEADERTests: XCTestCase {
    func testUnions() {
        XCTAssertEqual(8, MemoryLayout<EVENT_HEADER.TimeUnion>.size)
        XCTAssertEqual(8, MemoryLayout<EVENT_HEADER.TimeUnion.PublicSession>.size)
        
        let value = EVENT_HEADER.TimeUnion(processorTime: 0x0123456789ABCDEF)
        XCTAssertEqual(0x0123456789ABCDEF, value.processorTime)
        XCTAssertEqual(0x89ABCDEF, value.publicSession.kernelTime)
        XCTAssertEqual(0x01234567, value.publicSession.userTime)
    }

    static var allTests = [
        ("testUnions", testUnions),
    ]
}
