//
//  SID.swift
//  
//
//  Created by Hugh Bellamy on 30/10/2020.
//

import DataStream

/// [MS-DTYP] 2.4 Constructed Security Types
/// The following types are used to specify structures that are specific to the Windows security model.
/// [MS-DTYP] 2.4.2 SID
/// A security identifier (SID) uniquely identifies a security principal. Each security principal has a unique SID that is issued by a security agent.
/// The agent can be a Windows local system or domain. The agent generates the SID when the security principal is created. The SID can be
/// represented as a character string or as a structure. When represented as strings, for example in documentation or logs, SIDs are
/// expressed as follows:
/// S-1-IdentifierAuthority-SubAuthority1-SubAuthority2-...-SubAuthorityn
/// The top-level issuer is the authority. Each issuer specifies, in an implementation-specific manner, how many integers identify the next issuer.
/// A newly created account store is assigned a 96-bit identifier (a cryptographic strength (pseudo) random number).
/// A newly created security principal in an account store is assigned a 32-bit identifier that is unique within the store.
/// The last item in the series of SubAuthority values is known as the relative identifier (RID).
/// Differences in the RID are what distinguish the different SIDs generated within a domain.
/// Consumers of SIDs SHOULD NOT rely on anything more than that the SID has the appropriate structure.
/// The formal string syntax is given in section 2.4.2.1.
/// The packet representation of the SID structure used by block protocols is defined in section 2.4.2.2.
/// The RPC marshaled version of the SID structure is defined in section 2.4.2.3.
/// [MS-DTYP] 2.4.2.2 SID--Packet Representation
/// This is a packet representation of the SID type (as specified in section 2.4.2) for use by block protocols. Multiple-byte fields are transmitted on
/// the wire with an endianness specified by the protocol in question.
public struct SID {
    public var revision: UInt8
    public var subAuthorityCount: UInt8
    public var identifierAuthority: SID_IDENTIFIER_AUTHORITY
    public var subAuthority: [UInt32]
    
    public init(identifierAuthority: SID_IDENTIFIER_AUTHORITY, subAuthority: [UInt32]) {
        self.revision = 0x01
        self.subAuthorityCount = UInt8(subAuthority.count)
        self.identifierAuthority = identifierAuthority
        self.subAuthority = subAuthority
    }
    
    public init(dataStream: inout DataStream, endianess: Endianess) throws {
        /// Revision (1 byte): An 8-bit unsigned integer that specifies the revision level of the SID. This value MUST be set to 0x01.
        self.revision = try dataStream.read()
        
        /// SubAuthorityCount (1 byte): An 8-bit unsigned integer that specifies the number of elements in the SubAuthority array. The maximum
        /// number of elements allowed is 15.
        self.subAuthorityCount = try dataStream.read()
        if self.subAuthorityCount > 15 {
            throw WindowsDataTypesError.corrupted
        }
        
        /// IdentifierAuthority (6 bytes): A SID_IDENTIFIER_AUTHORITY structure that indicates the authority under which the SID was created.
        /// It describes the entity that created the SID. The Identifier Authority value {0,0,0,0,0,5} denotes SIDs created by the NT SID authority.
        self.identifierAuthority = try SID_IDENTIFIER_AUTHORITY(dataStream: &dataStream)
        
        /// SubAuthority (variable): A variable length array of unsigned 32-bit integers that uniquely identifies a principal relative to the
        /// IdentifierAuthority. Its length is determined by SubAuthorityCount.
        var subAuthority: [UInt32] = []
        subAuthority.reserveCapacity(Int(self.subAuthorityCount))
        for _ in 0..<self.subAuthorityCount {
            let subAuthorityElement: UInt32 = try dataStream.read(endianess: endianess)
            subAuthority.append(subAuthorityElement)
        }
        
        self.subAuthority = subAuthority
    }
}
