//
//  FILETIME.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

import Foundation

/// [MS-DTYP] 2.3.3 FILETIME
/// The FILETIME structure is a 64-bit value that represents the number of 100-nanosecond intervals that
/// have elapsed since January 1, 1601, Coordinated Universal Time (UTC).
public struct FILETIME: CustomStringConvertible {
    /// dwLowDateTime: A 32-bit unsigned integer that contains the low-order bits of the file time.
    public var dwLowDateTime: UInt32
    
    /// dwHighDateTime: A 32-bit unsigned integer that contains the high-order bits of the file time.
    public var dwHighDateTime: UInt32
    
    public init(dwLowDateTime: UInt32, dwHighDateTime: UInt32) {
        self.dwLowDateTime = dwLowDateTime
        self.dwHighDateTime = dwHighDateTime
    }
    
    public var rawValue: UInt64 {
        return (UInt64(dwHighDateTime) << 32) + UInt64(dwLowDateTime)
    }
    
    public var date: Date {
        let windowsTicks: UInt64 = 10000000
        let secondsToUnixEpoch: UInt64 = 11644473600
        
        let rawValue = self.rawValue
        let seconds = rawValue / windowsTicks
        let unixTimestamp = seconds - secondsToUnixEpoch
        return Date(timeIntervalSince1970: TimeInterval(unixTimestamp))
    }
    
    public var description: String {
        return String(rawValue)
    }
}
