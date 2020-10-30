//
//  SID_IDENTIFIER_AUTHORITY.swift
//  
//
//  Created by Hugh Bellamy on 30/10/2020.
//

import DataStream

/// [MS-DTYP] 2.4 Constructed Security Types
/// The following types are used to specify structures that are specific to the Windows security model.
/// [MS-DTYP] 2.4.1 SID_IDENTIFIER_AUTHORITY
/// The SID_IDENTIFIER_AUTHORITY structure represents the top-level authority of a security identifier (SID).
public struct SID_IDENTIFIER_AUTHORITY {
    public let value: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    
    public init(value: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)) {
        self.value = value
    }
    
    public init(dataStream: inout DataStream) throws {
        /// Value (6 bytes): An array of six 8-bit unsigned integers that specify the top-level authority of a SID, RPC_SID, and
        /// LSAPR_SID_INFORMATION.
        self.value = (
            try dataStream.read(),
            try dataStream.read(),
            try dataStream.read(),
            try dataStream.read(),
            try dataStream.read(),
            try dataStream.read()
        )
    }
    
    /// NULL_SID_AUTHORITY {0x00, 0x00, 0x00, 0x00, 0x00, 0x00}
    /// Specifies the NULL SID authority. It defines only the NULL well-known-SID: S-1-0-0.
    public static let NULL_SID_AUTHORITY = SID_IDENTIFIER_AUTHORITY(value: (0x00, 0x00, 0x00, 0x00, 0x00, 0x00))
    
    /// WORLD_SID_AUTHORITY {0x00, 0x00, 0x00, 0x00, 0x00, 0x01}
    /// Specifies the World SID authority. It only defines the Everyone well-known-SID: S-1-1-0.
    public static let WORLD_SID_AUTHORITY = SID_IDENTIFIER_AUTHORITY(value: (0x00, 0x00, 0x00, 0x00, 0x00, 0x01))
    
    /// LOCAL_SID_AUTHORITY {0x00, 0x00, 0x00, 0x00, 0x00, 0x02}
    /// Specifies the Local SID authority. It defines only the Local well-known-SID: S-1-2-0.
    public static let LOCAL_SID_AUTHORITY = SID_IDENTIFIER_AUTHORITY(value: (0x00, 0x00, 0x00, 0x00, 0x00, 0x02))

    /// CREATOR_SID_AUTHORITY {0x00, 0x00, 0x00, 0x00, 0x00, 0x03}
    /// Specifies the Creator SID authority. It defines the Creator Owner, Creator Group, and Creator Owner Server wellknown-SIDs: S-1-3-0,
    /// S-1-3-1, and S-1-3-2. These SIDs are used as placeholders in an access control list (ACL) and are replaced by the user, group, and
    /// machine SIDs of the security principal.
    public static let CREATOR_SID_AUTHORITY = SID_IDENTIFIER_AUTHORITY(value: (0x00, 0x00, 0x00, 0x00, 0x00, 0x03))

    /// NON_UNIQUE_AUTHORITY {0x00, 0x00, 0x00, 0x00, 0x00, 0x04} Not used.
    public static let NON_UNIQUE_AUTHORITY = SID_IDENTIFIER_AUTHORITY(value: (0x00, 0x00, 0x00, 0x00, 0x00, 0x04))

    /// SECURITY_NT_AUTHORITY {0x00, 0x00, 0x00, 0x00, 0x00, 0x05}
    /// Specifies the Windows NT security subsystem SID authority. It defines all other SIDs in the forest.
    public static let SECURITY_NT_AUTHORITY = SID_IDENTIFIER_AUTHORITY(value: (0x00, 0x00, 0x00, 0x00, 0x00, 0x05))

    /// SECURITY_APP_PACKAGE_AUTHORITY {0x00, 0x00, 0x00, 0x00, 0x00, 0x0F}
    /// Specifies the application package authority. It defines application capability SIDs.
    public static let SECURITY_APP_PACKAGE_AUTHORITY = SID_IDENTIFIER_AUTHORITY(value: (0x00, 0x00, 0x00, 0x00, 0x00, 0x0F))

    /// SECURITY_MANDATORY_LABEL_AUTHORITY {0x00, 0x00, 0x00, 0x00, 0x00, 0x10}
    /// Specifies the Mandatory label authority. It defines the integrity level SIDs.
    public static let SECURITY_MANDATORY_LABEL_AUTHORITY = SID_IDENTIFIER_AUTHORITY(value: (0x00, 0x00, 0x00, 0x00, 0x00, 0x10))
}
