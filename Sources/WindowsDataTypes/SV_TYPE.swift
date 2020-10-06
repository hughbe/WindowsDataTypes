//
//  SV_TYPE.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

public struct SV_TYPE: OptionSet {
    public let rawValue: UInt32
    
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
    
    /// SV_TYPE_WORKSTATION 0x00000001 A server running the WorkStation Service.
    public static let workstation = SV_TYPE(rawValue: 0x00000001)
    
    /// SV_TYPE_SERVER 0x00000002 A server running the Server Service.
    public static let server = SV_TYPE(rawValue: 0x00000002)
    
    /// SV_TYPE_SQLSERVER 0x00000004 A server running SQL Server.
    public static let sqlServer = SV_TYPE(rawValue: 0x00000004)
    
    /// SV_TYPE_DOMAIN_CTRL 0x00000008 A primary domain controller.
    public static let domainCtrl = SV_TYPE(rawValue: 0x00000008)
    
    /// SV_TYPE_DOMAIN_BAKCTRL 0x00000010 A backup domain controller.
    public static let domainBackCtrl = SV_TYPE(rawValue: 0x00000010)
    
    /// SV_TYPE_TIME_SOURCE 0x00000020 A server is available as a time source for network time synchronization.
    public static let timeSource = SV_TYPE(rawValue: 0x00000020)

    /// SV_TYPE_AFP 0x00000040 An Apple File Protocol server.
    public static let afp = SV_TYPE(rawValue: 0x00000040)
    
    /// SV_TYPE_NOVELL 0x00000080 A Novell server.
    public static let novell = SV_TYPE(rawValue: 0x00000080)
    
    /// SV_TYPE_DOMAIN_MEMBER 0x00000100 A LAN Manager 2.x domain member.
    public static let domainMember = SV_TYPE(rawValue: 0x00000100)
    
    /// SV_TYPE_PRINTQ_SERVER 0x00000200 A server sharing print queue.
    public static let printqServer = SV_TYPE(rawValue: 0x00000200)
    
    /// SV_TYPE_DIALIN_SERVER 0x00000400 A server running a dial-in service.
    public static let dialinServer = SV_TYPE(rawValue: 0x00000400)
    
    /// SV_TYPE_XENIX_SERVER 0x00000800 A Xenix server.
    public static let xenixServer = SV_TYPE(rawValue: 0x00000800)
    
    /// SV_TYPE_NT 0x00001000 Windows Server 2003, Windows XP, Windows 2000, or Windows NT operating system.
    public static let nt = SV_TYPE(rawValue: 0x00001000)
    
    /// SV_TYPE_WFW 0x00002000 A server running Windows for Workgroups.
    public static let wfw = SV_TYPE(rawValue: 0x00002000)
    
    /// SV_TYPE_SERVER_MFPN 0x00004000 Microsoft File and Print for NetWare.
    public static let serverMfpn = SV_TYPE(rawValue: 0x00004000)
    
    /// SV_TYPE_SERVER_NT 0x00008000 Windows Server 2003, Windows 2000 Server operating system, or a server
    /// that is not a domain controller.
    public static let serverNT = SV_TYPE(rawValue: 0x00008000)
    
    /// SV_TYPE_POTENTIAL_BROWSER 0x00010000 A server that can run the browser service.
    public static let potentialBrowser = SV_TYPE(rawValue: 0x00010000)
    
    /// SV_TYPE_BACKUP_BROWSER 0x00020000 A server running a browser service as backup.
    public static let backupBrowser = SV_TYPE(rawValue: 0x00020000)
    
    /// SV_TYPE_MASTER_BROWSER 0x00040000 A server running the master browser service.
    public static let masterBrowser = SV_TYPE(rawValue: 0x00040000)
    
    /// SV_TYPE_DOMAIN_MASTER 0x00080000 A server running the domain master browser.
    public static let domainMaster = SV_TYPE(rawValue: 0x00080000)
    
    /// SV_TYPE_WINDOWS 0x00400000 Windows Millennium Edition operating system, Windows 98 operating system,
    /// or Windows 95.
    public static let windows = SV_TYPE(rawValue: 0x00400000)
    
    /// SV_TYPE_TERMINALSERVER 0x02000000 Terminal Server.
    public static let terminalServer = SV_TYPE(rawValue: 0x02000000)
    
    /// SV_TYPE_CLUSTER_VS_NT 0x04000000 Cluster virtual servers available in the domain.
    public static let clusterVSNT = SV_TYPE(rawValue: 0x04000000)
    
    /// SV_TYPE_LOCAL_LIST_ONLY 0x40000000 Servers maintained by the browser.
    public static let localListOnly = SV_TYPE(rawValue: 0x40000000)
    
    /// SV_TYPE_DOMAIN_ENUM 0x80000000 Primary domain.
    public static let domainEnum = SV_TYPE(rawValue: 0x80000000)

    /// SV_TYPE_ALL 0xFFFFFFFF All servers
    public static let all = SV_TYPE(rawValue: 0xFFFFFFFF)
}
