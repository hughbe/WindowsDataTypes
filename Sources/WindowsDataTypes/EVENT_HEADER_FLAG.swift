//
//  EVENT_HEADER_FLAG.swift
//  
//
//  Created by Hugh Bellamy on 06/10/2020.
//

public enum EVENT_HEADER_FLAG: UInt16 {
    /// EVENT_HEADER_FLAG_EXTENDED_INFO The ExtendedData member of the event record contains data.
    case extendedInfo = 0x0001
    
    /// EVENT_HEADER_FLAG_PRIVATE_SESSION The event was logged to a private session.
    case privateSession = 0x0002
    
    /// EVENT_HEADER_FLAG_STRING_ONLY The event data is a null-terminated Unicode string.
    case stringOnly = 0x0004
    
    /// EVENT_HEADER_FLAG_TRACE_MESSAGE The provider used an implementation-specific trace message
    /// function to log the event. Typically indicates that the event
    /// was written by the Windows software trace preprocessor.
    case traceMessage = 0x0008
    
    /// EVENT_HEADER_FLAG_NO_CPUTIME Indicates that elapsed execution time was not recorded; the
    /// ProcessorTime member can be used to determine the
    /// elapsed execution time.
    case noCPUTime = 0x0010
    
    /// EVENT_HEADER_FLAG_32_BIT_HEADER Indicates that the provider was running on a 32-bit computer
    /// or in a WOW64 session.
    case thirtyTwoBitHeader = 0x0020
    
    /// EVENT_HEADER_FLAG_64_BIT_HEADER Indicates that the provider was running on a 64-bit computer.
    case sixtyFourBitHeader = 0x0040
    
    /// EVENT_HEADER_FLAG_DECODE_GUID Indicates that the ProviderId member of the event record is a
    /// decode GUID rather than a control GUID.<2>
    case decodeGUID = 0x0080
    
    /// EVENT_HEADER_FLAG_CLASSIC_HEADER Indicates that provider used a trace event function to log the event.
    case classicHeader = 0x0100
    
    /// EVENT_HEADER_FLAG_PROCESSOR_INDEX If this flag is set, the identifier for the CPU that logged the event
    /// MUST be accessed using the ProcessorIndex member of the BufferContext member of the event record.
    /// If this flag is not set, the identifier for the CPU that logged the event MUST be read from the ProcessorNumber
    /// member of the BufferContext member of the event record.<3>
    case processorIndex = 0x0200
}
