//
//  LARGE_INTEGER.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

import Foundation

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.5 LARGE_INTEGER
/// The LARGE_INTEGER structure is used to represent a 64-bit signed integer value.
/// typedef struct _LARGE_INTEGER {
///  signed __int64 QuadPart;
/// } LARGE_INTEGER,
/// *PLARGE_INTEGER;
public struct LARGE_INTEGER {
    public var rawValue: Int64
}
