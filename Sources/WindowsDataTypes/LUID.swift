//
//  LUID.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

import Foundation

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.7 LUID
/// The LUID structure is 64-bit value guaranteed to be unique only on the system on which it was
/// generated. The uniqueness of a locally unique identifier (LUID) is guaranteed only until the system is
/// restarted.
/// typedef struct _LUID {
///  DWORD LowPart;
///  LONG HighPart;
/// } LUID,
/// *PLUID;
public struct LUID {
    /// LowPart: The low-order bits of the structure.
    public var lowPart: UInt32
    
    /// HighPart: The high-order bits of the structure.
    public var highPart: Int32
}
