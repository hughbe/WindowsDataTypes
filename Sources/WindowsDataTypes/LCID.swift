//
//  LCID.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.6 LCID
/// A language code identifier structure is stored as a DWORD. The lower word contains the language
/// identifier, and the upper word contains both the sorting identifier (ID) and a reserved value. For
/// additional details about the structure and possible values, see [MS-LCID].
/// This type is declared as follows:
/// typedef DWORD LCID;
public struct LCID {
    public var rawValue: UInt32
}
