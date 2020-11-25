//
//  LONG.swift
//
//
//  Created by Hugh Bellamy on 03/11/2020.
//

/// [MS-DTYP] 2.2.27 LONG
/// A LONG is a 32-bit signed integer, in twos-complement format (range: –2147483648 through 2147483647 decimal). The first bit (Most Significant
/// Bit (MSB)) is the signing bit.
/// This type is declared as follows:
/// typedef long LONG, *PLONG, *LPLONG;
public typealias LONG = Int32
