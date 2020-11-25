//
//  GUID.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

import DataStream

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.4 GUID and UUID
/// A GUID, also known as a UUID, is a 16-byte structure, intended to serve as a unique identifier for an object. There are three representations
/// of a GUID, as described in the following sections.
/// [MS-DTYP] 2.3.4.2 GUID--Packet Representation
/// The packet version is used within block protocols. The following diagram represents a GUID as an opaque sequence of bytes.
public struct GUID: CustomStringConvertible, Hashable {
    /// Data1 (4 bytes): The value of the Data1 member (section 2.3.4), in little-endian byte order.
    public var data1: UInt32
    
    /// Data2 (2 bytes): The value of the Data2 member (section 2.3.4), in little-endian byte order.
    public var data2: UInt16
    
    /// Data3 (2 bytes): The value of the Data3 member (section 2.3.4), in little-endian byte order.
    public var data3: UInt16
    
    /// Data4 (8 bytes): The value of the Data4 member (section 2.3.4), in little-endian byte order.
    public var data4: [UInt8]
    
    public init(_ data1: UInt32, _ data2: UInt16, _ data3: UInt16, _ data4: [UInt8]) {
        self.data1 = data1
        self.data2 = data2
        self.data3 = data3
        self.data4 = data4
    }
    
    public init(_ data1: UInt32, _ data2: UInt16, _ data3: UInt16, _ data4: UInt64) {
        self.data1 = data1
        self.data2 = data2
        self.data3 = data3
        
        var data4LE = data4.littleEndian
        self.data4 = [UInt8](withUnsafePointer(to: &data4LE) {
            $0.withMemoryRebound(to: UInt8.self, capacity: MemoryLayout<UInt64>.size) {
                UnsafeBufferPointer(start: $0, count: MemoryLayout<UInt64>.size)
            }
        })
    }

    public init(_ data1: UInt32,
                _ data2: UInt16,
                _ data3: UInt16,
                _ data4: UInt8,
                _ data5: UInt8,
                _ data6: UInt8,
                _ data7: UInt8,
                _ data8: UInt8,
                _ data9: UInt8,
                _ data10: UInt8,
                _ data11: UInt8) {
        self.data1 = data1
        self.data2 = data2
        self.data3 = data3
        self.data4 = [data4, data5, data6, data7, data8, data9, data10, data11]
    }
    
    public init(dataStream: inout DataStream) throws {
        /// Data1 (4 bytes): The value of the Data1 member (section 2.3.4), in little-endian byte order.
        self.data1 = try dataStream.read(endianess: .littleEndian)
        
        /// Data2 (2 bytes): The value of the Data2 member (section 2.3.4), in little-endian byte order.
        self.data2 = try dataStream.read(endianess: .littleEndian)
        
        /// Data3 (2 bytes): The value of the Data3 member (section 2.3.4), in little-endian byte order.
        self.data3 = try dataStream.read(endianess: .littleEndian)
        
        /// Data4 (8 bytes): The value of the Data4 member (section 2.3.4), in little-endian byte order.
        self.data4 = try dataStream.readBytes(count: 8)
    }
    
    public var description: String {
        func string<T>(value: T) -> String where T: FixedWidthInteger {
            return String(String(value, radix: 16, uppercase: true)
                            .padLeft(toLength: MemoryLayout<T>.size * 2, withPad: "0"))
        }
        
        return "\(string(value: data1))-\(string(value: data2))-\(string(value: data3))-\(string(value: data4[0]))\(string(value: data4[1]))-\(string(value: data4[2]))\(string(value: data4[3]))\(string(value: data4[4]))\(string(value: data4[5]))\(string(value: data4[6]))\(string(value: data4[7]))"
    }
}
