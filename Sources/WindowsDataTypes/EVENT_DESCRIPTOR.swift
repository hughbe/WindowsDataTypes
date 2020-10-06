//
//  EVENT_DESCRIPTOR.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.1 EVENT_DESCRIPTOR
/// The EVENT_DESCRIPTOR structure specifies the metadata that defines an event.
/// typedef struct _EVENT_DESCRIPTOR {
///  USHORT Id;
///  UCHAR Version;
///  UCHAR Channel;
///  UCHAR Level;
///  UCHAR Opcode;
///  USHORT Task;
///  ULONGLONG Keyword;
/// } EVENT_DESCRIPTOR,
/// *PEVENT_DESCRIPTOR,
/// *PCEVENT_DESCRIPTOR;
/// This structure represents an event defined in a manifest and is included in the EVENT_HEADER structure.
public struct EVENT_DESCRIPTOR {
    /// Id: The event identifier.
    public var id: UInt16
    
    /// Version: The version of the event, which indicates a revision to the event definition. The Version and
    /// Id members uniquely identify the event within the scope of a provider.
    public var version: UInt8
    
    /// Channel: Defines the audience for the event (for example, administrator or developer).
    public var channel: UInt8
    
    /// Level: Specifies the severity or level of detail included in the event (for example, informational or
    /// fatal).
    public var level: UInt8
    
    /// Opcode: Identifies a step in a sequence of operations being performed within a Task.
    public var opcode: UInt8

    /// Task: Identifies a larger unit of work within an application or component (broader in scope than the
    /// Opcode).
    public var task: UInt16
    
    /// Keyword: A bitmask that specifies a logical group of related events. Each bit corresponds to one
    /// group. An event can belong to one or more groups. The keyword can contain one or more
    /// provider-defined keywords, standard keywords, or both.
    public var keyword: UInt64
}
