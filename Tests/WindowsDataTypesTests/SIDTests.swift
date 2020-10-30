import XCTest
import DataStream
@testable import WindowsDataTypes

final class SIDTests: XCTestCase {
    func testInitDataStream() throws {
        do {
            let buffer: [UInt8] = [
                0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x0B,
                0xFE, 0x7F, 0x03, 0x00, 0x30, 0x4C, 0x53, 0x34
            ]
            var dataStream = DataStream(buffer: buffer)
            let sid = try SID(dataStream: &dataStream, endianess: .littleEndian)
            XCTAssertEqual(0x01, sid.revision)
            XCTAssertEqual(0x02, sid.subAuthorityCount)
            XCTAssertEqual(0x00, sid.identifierAuthority.value.0)
            XCTAssertEqual(0x00, sid.identifierAuthority.value.1)
            XCTAssertEqual(0x00, sid.identifierAuthority.value.2)
            XCTAssertEqual(0x00, sid.identifierAuthority.value.3)
            XCTAssertEqual(0x0B, sid.identifierAuthority.value.4)
            XCTAssertEqual(0x0B, sid.identifierAuthority.value.5)
            XCTAssertEqual([0x37FFE, 0x34534C30], sid.subAuthority)
            XCTAssertEqual(0, dataStream.remainingCount)
        }
        do {
            let buffer: [UInt8] = [
                0x01, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
                0x15, 0x00, 0x00, 0x00, 0xCD, 0x37, 0x78, 0x00,
                0x5B, 0x1A, 0xE9, 0x73, 0x11, 0x61, 0x1B, 0x45,
                0xF9, 0x12, 0x00, 0x00,
            ]
            var dataStream = DataStream(buffer: buffer)
            let sid = try SID(dataStream: &dataStream, endianess: .littleEndian)
            XCTAssertEqual(0x01, sid.revision)
            XCTAssertEqual(0x05, sid.subAuthorityCount)
            XCTAssertEqual(0x00, sid.identifierAuthority.value.0)
            XCTAssertEqual(0x00, sid.identifierAuthority.value.1)
            XCTAssertEqual(0x00, sid.identifierAuthority.value.2)
            XCTAssertEqual(0x00, sid.identifierAuthority.value.3)
            XCTAssertEqual(0x00, sid.identifierAuthority.value.4)
            XCTAssertEqual(0x05, sid.identifierAuthority.value.5)
            XCTAssertEqual([0x15, 0x7837CD, 0x73E91A5B, 0x451B6111, 0x12F9], sid.subAuthority)
            XCTAssertEqual(0, dataStream.remainingCount)
        }
    }

    static var allTests = [
        ("testInitDataStream", testInitDataStream),
    ]
}
