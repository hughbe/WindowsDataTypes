//
//  SERVER_INFO_101.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

import Foundation

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.12 SERVER_INFO_101
/// The SERVER_INFO_101 structure contains information about the specified server, including the name,
/// platform, type of server, and associated software.
/// typedef struct _SERVER_INFO_101 {
///  DWORD sv101_platform_id;
///  [string] wchar_t* sv101_name;
///  DWORD sv101_version_major;
///  DWORD sv101_version_minor;
///  DWORD sv101_version_type;
///  [string] wchar_t* sv101_comment;
/// } SERVER_INFO_101,
/// *PSERVER_INFO_101,
/// *LPSERVER_INFO_101;
public struct SERVER_INFO_101 {
    /// sv101_platform_id: Specifies the information level to use for platform-specific information.
    public var sv101_platform_id: PLATFORM_ID
    
    /// sv101_name: A pointer to a null-terminated Unicode UTF-16 Internet host name or NetBIOS
    /// host name of a server.
    public var sv101_name: String

    /// sv101_version_major: Specifies the major release version number of the operating system. The
    /// server MUST set this field to an implementation-specific major release version number that
    /// corresponds to the host operating system as specified in the following table.
    /// Operating System               | Major version
    /// ----------------------------------------------
    /// Windows NT 4.0 operating system               | 4
    /// Windows 2000 operating system                  | 5
    /// Windows XP operating system                     | 5
    /// Windows Server 2003 operating system       | 5
    /// Windows Vista operating system                   | 6
    /// Windows Server 2008 operating system       | 6
    /// Windows Server 2008 R2 operating system  | 6
    public var sv101_version_major: UInt32
    
    /// sv101_version_minor: Specifies the minor release version number of the operating system. The
    /// server MUST set this field to an implementation-specific minor release version number that
    /// corresponds to the host operating system as specified in the following table.
    /// Operating System  | Minor version
    /// ----------------------------------------------
    /// Windows NT 4.0               | 0
    /// Windows 2000                  | 0
    /// Windows XP                     | 1
    /// Windows Server 2003      | 2
    /// Windows Vista                  | 0
    /// Windows Server 2008       | 0
    /// Windows Server 2008 R2 | 1
    public var sv101_version_minor: UInt32
    
    /// sv101_version_type: The sv101_version_type field specifies the SV_TYPE flags, which indicate the
    /// software services that are available (but not necessarily running) on the server. This member
    /// MUST be a combination of one or more of the following values.
    public var sv101_version_type: SV_TYPE
    
    /// sv101_comment: A pointer to a null-terminated Unicode UTF-16 string that specifies a comment
    /// that describes the server.
    public var sv101_comment: String
}
