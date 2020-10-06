//
//  SYSTEMTIME.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

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
}
