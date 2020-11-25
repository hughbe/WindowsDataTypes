//
//  ULONG4.swift
//
//
//  Created by Hugh Bellamy on 03/11/2020.
//

/// [MS-DTYP] 2.2.54 ULONG64
/// A ULONG64 is a 64-bit unsigned integer (range: 0 through 18446744073709551615 decimal).
/// Because a ULONG64 is unsigned, its first bit (Most Significant Bit (MSB)) is not reserved for signing.
/// This type is declared as follows:
/// typedef unsigned __int64 ULONG64;
public typealias ULONG64 = UInt64
