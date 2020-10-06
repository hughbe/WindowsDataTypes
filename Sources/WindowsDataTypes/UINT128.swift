//
//  UINT128.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.14 UINT128
/// The UINT128 structure is intended to hold 128-bit unsigned integers, such as an IPv6 destination
/// address.
/// typedef struct _UINT128 {
///  UINT64 lower;
///  UINT64 upper;
/// } UINT128,
/// *PUINT128;
public struct UINT128 {
    public var lower: UInt64
    public var upper: UInt64
}
