//
//  RPC_UNICODE_STRING.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

import Foundation

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.10 RPC_UNICODE_STRING
/// The RPC_UNICODE_STRING structure specifies a Unicode string. This structure is defined in IDL as
/// follows:
/// typedef struct _RPC_UNICODE_STRING {
///  unsigned short Length;
///  unsigned short MaximumLength;
///  [size_is(MaximumLength/2), length_is(Length/2)]
///  WCHAR* Buffer;
/// } RPC_UNICODE_STRING,
/// *PRPC_UNICODE_STRING;
public struct RPC_UNICODE_STRING {
    /// Length: The length, in bytes, of the string pointed to by the Buffer member, not including the
    /// terminating null character if any. The length MUST be a multiple of 2. The length SHOULD equal
    /// the entire size of the Buffer, in which case there is no terminating null character. Any method
    /// that accesses this structure MUST use the Length specified instead of relying on the presence or
    /// absence of a null character.
    public var length: UInt16

    /// MaximumLength: The maximum size, in bytes, of the string pointed to by Buffer. The size MUST be
    /// a multiple of 2. If not, the size MUST be decremented by 1 prior to use. This value MUST not be
    /// less than Length.
    public var maximumLength: UInt16
    
    /// Buffer: A pointer to a string buffer. If MaximumLength is greater than zero, the buffer MUST
    /// contain a non-null value.
    public var buffer: String
}
