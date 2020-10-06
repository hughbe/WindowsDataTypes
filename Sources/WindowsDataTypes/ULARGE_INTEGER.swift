//
//  ULARGE_INTEGER.swift
//
//
//  Created by Hugh Bellamy on 06/10/2020.
//

import Foundation

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.15 ULARGE_INTEGER
/// The ULARGE_INTEGER structure is used to represent a 64-bit unsigned integer value.
/// typedef struct _ULARGE_INTEGER {
///  unsigned __int64 QuadPart;
/// } ULARGE_INTEGER,
/// *PULARGE_INTEGER;
public struct ULARGE_INTEGER {
    public var rawValue: UInt64
}
