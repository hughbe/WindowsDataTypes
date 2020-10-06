//
//  EVENT_HEADER.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

/// [MS-DTYP] 2.3 Common Data Structures
/// This section contains common data structures that are defined in either C, C++, or ABNF.
/// [MS-DTYP] 2.3.2 EVENT_HEADER
/// The EVENT_HEADER structure defines the main parameters of an event.
/// typedef struct _EVENT_HEADER {
///  USHORT Size;
///  USHORT HeaderType;
///  USHORT Flags;
///  USHORT EventProperty;
///  ULONG ThreadId;
///  ULONG ProcessId;
///  LARGE_INTEGER TimeStamp;
///  GUID ProviderId;
///  EVENT_DESCRIPTOR EventDescriptor;
///  union {
///  struct {
///  ULONG KernelTime;
///  ULONG UserTime;
///  };
///  ULONG64 ProcessorTime;
///  };
///  GUID ActivityId;
/// } EVENT_HEADER,
/// *PEVENT_HEADER;
/// The KernelTime and UserTime members can be used to determine the CPU cost in units for a set of
/// instructions (the values indicate the CPU usage charged to that thread at the time of logging). For
/// example, if Event A and Event B are consecutively logged by the same thread and they have CPU
/// usage numbers 150 and 175, then the activity that was performed by that thread between events A
/// and B cost 25 CPU time units (175 – 150).
public struct EVENT_HEADER {
    /// Size: Size of the event record, in bytes.
    public var size: UInt16
    
    /// HeaderType: Reserved.
    public var headerType: UInt16
    
    /// Flags: Flags that provide information about the event such as the type of session it was logged to
    /// and whether the event contains extended data. This member can contain one or more of the
    /// following flags.
    public var flags: EVENT_HEADER_FLAG
    
    /// EventProperty: Indicates the source to use for parsing the event data.
    public var eventProperty: EVENT_HEADER_PROPERTY
    
    /// ThreadId: Identifies the thread that generated the event.
    public var threadId: UInt32
    
    /// ProcessId: Identifies the process that generated the event.
    public var processId: UInt32
    
    /// TimeStamp: Contains the time that the event occurred. The resolution is system time unless the ProcessTraceMode
    /// member of EVENT_TRACE_LOGFILE contains the PROCESS_TRACE_MODE_RAW_TIMESTAMP flag, in which
    /// case the resolution depends on the value of the Wnode.ClientContext member of EVENT_TRACE_PROPERTIES at
    /// the time the controller created the session.
    public var timeStamp: LARGE_INTEGER
    
    /// ProviderId: GUID that uniquely identifies the provider that logged the event.
    public var providerId: GUID
    
    /// EventDescriptor: Defines information about the event such as the event identifier and severity level.
    public var eventDescriptor: EVENT_DESCRIPTOR
    
    /// KernelTime: Elapsed execution time for kernel-mode instructions, in CPU time units. For private sessions, the value in
    /// the ProcessorTime member can be used instead.
    /// UserTime: Elapsed execution time for user-mode instructions, in CPU time units. For private sessions, the value in
    /// the ProcessorTime member can be used instead.
    /// ProcessorTime: For private sessions, the elapsed execution time for user-mode instructions, in CPU ticks.
    public var timeUnion: TimeUnion
    
    /// ActivityId: Identifier that relates two events.
    public var activityId: GUID
    
    public struct TimeUnion {
        public var processorTime: UInt64
        
        public struct PublicSession {
            /// KernelTime: Elapsed execution time for kernel-mode instructions, in CPU time units. For private
            /// sessions, the value in the ProcessorTime member can be used instead.
            public var kernelTime: UInt32
            
            /// UserTime: Elapsed execution time for user-mode instructions, in CPU time units. For private
            /// sessions, the value in the ProcessorTime member can be used instead.
            public var userTime: UInt32
        }
        
        public var publicSession: PublicSession  {
            return reinterpret_cast(processorTime, to: PublicSession.self)
        }
    }
}
