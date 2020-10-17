//
//  SYSTEMTIME.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

import DataStream

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.13 SYSTEMTIME
/// The SYSTEMTIME structure is a date and time, in Coordinated Universal Time (UTC), represented by
/// using individual WORD-sized structure members for the month, day, year, day of week, hour, minute,
/// second, and millisecond.
/// typedef struct _SYSTEMTIME {
///  WORD wYear;
///  WORD wMonth;
///  WORD wDayOfWeek;
///  WORD wDay;
///  WORD wHour;
///  WORD wMinute;
///  WORD wSecond;
///  WORD wMilliseconds;
/// } SYSTEMTIME,
/// *PSYSTEMTIME;
public struct SYSTEMTIME {
    public var wYear: UInt16
    public var wMonth: UInt16
    public var wDayOfWeek: UInt16
    public var wDay: UInt16
    public var wHour: UInt16
    public var wMinute: UInt16
    public var wSecond: UInt16
    public var wMilliseconds: UInt16
    
    public init(wYear: UInt16,
                wMonth: UInt16,
                wDayOfWeek: UInt16,
                wDay: UInt16,
                wHour: UInt16,
                wMinute: UInt16,
                wSecond: UInt16,
                wMilliseconds: UInt16) {
        self.wYear = wYear
        self.wMonth = wMonth
        self.wDayOfWeek = wDayOfWeek
        self.wDay = wDay
        self.wHour = wHour
        self.wMinute = wMinute
        self.wSecond = wSecond
        self.wMilliseconds = wMilliseconds
    }
    
    public init(dataStream: inout DataStream) throws {
        self.wYear = try dataStream.read(endianess: .littleEndian)
        self.wMonth = try dataStream.read(endianess: .littleEndian)
        self.wDayOfWeek = try dataStream.read(endianess: .littleEndian)
        self.wDay = try dataStream.read(endianess: .littleEndian)
        self.wHour = try dataStream.read(endianess: .littleEndian)
        self.wMinute = try dataStream.read(endianess: .littleEndian)
        self.wSecond = try dataStream.read(endianess: .littleEndian)
        self.wMilliseconds = try dataStream.read(endianess: .littleEndian)
    }
}
