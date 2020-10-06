//
//  MULTI_SZ.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.8 MULTI_SZ
/// The MULTI_SZ structure defines an implementation-specific<4> type that contains a sequence of nullterminated strings,
/// terminated by an empty string (\0) so that the last two characters are both null terminators.
/// typedef struct _MULTI_SZ {
///  wchar_t* Value;
///  DWORD nChar;
/// } MULTI_SZ;
public struct MULTI_SZ {
    /// Value: A data buffer, which is a string literal containing multiple null-terminated strings serially.
    public var value: String
    
    /// nChar: The length, in characters, including the two terminating nulls.
    public var nChar: UInt32
}
