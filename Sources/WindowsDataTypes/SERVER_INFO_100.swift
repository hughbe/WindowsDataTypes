//
//  SERVER_INFO_100.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

import Foundation

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.11 SERVER_INFO_100
/// The SERVER_INFO_100 structure contains information about the specified server, including the name
/// and platform.
/// typedef struct _SERVER_INFO_100 {
///  DWORD sv100_platform_id;
///  [string] wchar_t* sv100_name;
/// } SERVER_INFO_100,
/// *PSERVER_INFO_100,
/// *LPSERVER_INFO_100;
public struct SERVER_INFO_100 {
    /// sv100_platform_id: Specifies the information level to use for platform-specific information.
    public var sv100_platform_id: PLATFORM_ID
    
    /// sv100_name: A pointer to a null-terminated Unicode UTF-16 Internet host name or NetBIOS
    /// host name of a server.
    public var sv100_name: String
}
