//
//  ULONGLONG.swift
//  
//
//  Created by Hugh Bellamy on 03/11/2020.
//

/// [MS-DTYP] 2.2.55 ULONGLONG
/// A ULONGLONG is a 64-bit unsigned integer (range: 0 through 18446744073709551615 decimal).
/// Because a ULONGLONG is unsigned, its first bit (Most Significant Bit (MSB)) is not reserved for signing.
/// This type is declared as follows:
/// typedef unsigned __int64 ULONGLONG;
public typealias ULONGLONG = UInt64
