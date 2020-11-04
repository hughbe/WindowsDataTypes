//
//  ULONG.swift
//  
//
//  Created by Hugh Bellamy on 03/11/2020.
//

/// [MS-DTYP] 2.2.51 ULONG
/// A ULONG is a 32-bit unsigned integer (range: 0 through 4294967295 decimal). Because a ULONG is unsigned, its first bit (Most Significant Bit
/// (MSB)) is not reserved for signing.
/// This type is declared as follows:
/// typedef unsigned long ULONG, *PULONG;
public typealias ULONG = UInt32
