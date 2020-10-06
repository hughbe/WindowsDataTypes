//
//  GUID.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.4 GUID and UUID
/// A GUID, also known as a UUID, is a 16-byte structure, intended to serve as a unique identifier for an
/// object. There are three representations of a GUID, as described in the following sections.
/// [MS-DTYP] 2.3.4.2 GUID--Packet Representation
/// The packet version is used within block protocols. The following diagram represents a GUID as an
/// opaque sequence of bytes.
public struct GUID {
    /// Data1 (4 bytes): The value of the Data1 member (section 2.3.4), in little-endian byte order.
    public var data1: UInt32
    
    /// Data2 (2 bytes): The value of the Data2 member (section 2.3.4), in little-endian byte order.
    public var data2: UInt16
    
    /// Data3 (2 bytes): The value of the Data3 member (section 2.3.4), in little-endian byte order.
    public var data3: UInt16
    
    /// Data4 (8 bytes): The value of the Data4 member (section 2.3.4), in little-endian byte order.
    public var data4: UInt64
}
