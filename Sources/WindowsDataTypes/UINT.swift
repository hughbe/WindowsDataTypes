//
//  UINT.swift
//  
//
//  Created by Hugh Bellamy on 04/11/2020.
//

/// [MS-DTYP] 2.2.46 UINT
/// A UINT is a 32-bit unsigned integer (range: 0 through 4294967295 decimal). Because a UINT is unsigned, its first bit (Most Significant Bit (MSB))
/// is not reserved for signing.
/// This type is declared as follows:
/// typedef unsigned int UINT;
public typealias UINT = UInt32
